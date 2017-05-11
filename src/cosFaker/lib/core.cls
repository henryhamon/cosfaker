Class cosFaker.lib.core Extends %Projection.AbstractProjection
{

/// Portuguese (Brazil)
Parameter PtBr = "PtBr";

/// English (United States)
Parameter EnUs = "EnUs";

/// "cs" = "Czech"<br/>
/// "de" = "German"<br/>
/// "en" = "English"<br/>
/// "en-us" = "English (United States)"<br/>
/// "es" = "Spanish"<br/>
/// "fr" = "French"<br/>
/// "it" = "Italian"<br/>
/// "ja" = "Japanese"<br/>
/// "ko" = "Korean"<br/>
/// "nl" = "Dutch"<br/>
/// "pt" = "Portuguese"<br/>
/// "pt-br" = "Portuguese (Brazil)"<br/>
/// "ru" = "Russian"<br/>
/// "uk" = "Ukrainian"<br/>
/// "zh" = "Chinese"<br/>
/// "zh-cn" = "Chinese (PRC)"<br/>
/// "zh-tw" = "Chinese (Taiwan)"
ClassMethod GetLanguage() As %String [ Private ]
{
	Quit $ZConvert($List(##class(%SYS.NLS.Locale).GetLanguage(),1),"l")
}

ClassMethod GetLang() As %String [ Private ]
{
	Quit:..GetLanguage()="pt-br" ..#PtBr
	Quit ..#EnUs ;Default
}

ClassMethod Sample(pList) As %String [ Private ]
{
	Quit:$ListLength(pList)>0 $List(pList, $Random($ListLength(pList)) + 1)
	Quit ""
}

ClassMethod MaskNumber(pTemplate As %String, pMin As %Integer = "", pMax As %Integer = "") As %String [ Private ]
{
	Set pos = $Find(pTemplate,"#",0)
	
	While pos'=$$$NO {
		
		If ((pMin="")||(pMax="")) {
			Set value = $Random(10)
		} Else {
			Set value = ..Range(pMin, pMax)
		}
		
		Set pTemplate = $Extract(pTemplate,0,pos-2)_value_$Extract(pTemplate,pos,*),
			pos = $Find(pTemplate,"#",0)
	}
	Quit pTemplate
}

ClassMethod Range(pMin As %Integer = 0, pMax As %Integer = 10000) As %Integer [ Private ]
{
	Set value = pMin-10, dec = ""
	While ('..In(value, pMin, pMax)) {
		Set value = $Random(pMax + 1)
	}
	
	Quit value
}

ClassMethod In(pValue, pMin As %Integer, pMax As %Integer) As %Boolean [ Private ]
{
	Quit ((pValue>=pMin)&&(pValue<=pMax))
}

ClassMethod SampleFromFile(pMethod As %String = "", pSearch As %String = "") As %String [ Private ]
{
	Quit $ZConvert(..Sample($ListFromString(..GetFile(pMethod,pSearch),",")),"I","UTF8")
}

ClassMethod GetFile(pMethod As %String = "", pSearch As %String = "") As %String [ Private ]
{
	Set dir = ..GetPath()_"cosFaker\lang\"_..GetLang()_"\"
	Set file = ##class(%File).%New(dir_..GetLang()_".fkr")
	Do file.Open("R")
	Set Ret = ""
	While 'file.AtEnd{
		Set val = file.Read()
		If (($Find(val,..Class()_"->"_pMethod_"={")>0)){ //Main File
			Set Ret = ..GetInternalValue(val)
			Quit
		} ElseIf (($Find(val,..Class()_"->"_pMethod_"=file{")>0)){ //Another file
			Set secondaryFile = ##class(%File).%New(dir_..GetInternalValue(val)_".fkr")
			Do secondaryFile.Open("R")
			While 'secondaryFile.AtEnd{
				Set secVal = secondaryFile.Read()
				If ((pSearch'="")&&($Find(secVal,pSearch_"={")>0)){
					Set Ret = ..GetInternalValue(secVal)
					Quit
				} ElseIf(pSearch="") {
					Set Ret = Ret_secVal
				}
			}
		}
	}
	Do file.Close()
	Quit Ret
}

ClassMethod GetInternalValue(pString As %String, pSeparator1 As %String = "{", pSeparator2 As %String = "}") As %String [ Private ]
{
	Quit $Piece($Piece(pString,pSeparator1,2),pSeparator2,1)
}

ClassMethod GetPath() As %String [ Private ]
{
	Set OldNS = $Namespace
	ZN "%SYS"
	Set app = ##class(Security.Applications).%OpenId($System.CSP.GetDefaultApp(OldNS))
	Set path = app.Path
	ZN OldNS
	Quit path
}

ClassMethod Hexadecimal() As %String [ Private ]
{
	Set Num = ..Range(0,15)
	Quit:Num<10 Num
	Quit $Case(Num,10:"a",11:"b",12:"c",13:"d",14:"e",15:"f")
}

ClassMethod Times(pAmount As %Integer = 1, pClassName As %String = "", pMethodName As %String = "", pBreakInsertCount As %Integer = -1, pBreakInsertString As %String) As %String [ Private ]
{
	Set count = 0, ret = ""
	For i=1:1:pAmount{
		Set:count=pBreakInsertCount ret = ret_pBreakInsertString, count = 0
		Set count = count + 1
		Set ret = ret_$ClassMethod(pClassName,pMethodName)
	}
	Quit ret
}

/// Used by SQL and JSON class
ClassMethod DefineValue(pType As %String, args...) As %String [ Private ]
{
    Quit $Case($Translate($ZConvert(pType,"L"),"-",""),     
        //Class: Address
        "streetprefix":     ##class(cosFaker.Address).StreetPrefix(),
        "streetsuffix":     ##class(cosFaker.Address).StreetSuffix(),
        "street":           ##class(cosFaker.Address).StreetName(),
        "streetname":       ##class(cosFaker.Address).StreetName(),
        "latitude":         ##class(cosFaker.Address).Latitude(),
        "longitude":        ##class(cosFaker.Address).Longitude(),
        "capital":          ##class(cosFaker.Address).Capital(),
        "state":            ##class(cosFaker.Address).State($Get(args(1),"0")),
        "statefull":        ##class(cosFaker.Address).State(1),
        "city":             ##class(cosFaker.Address).City($Get(args(1),"")),
        "country":			##class(cosFaker.Address).Country($Get(args(1),"0")),
        "postcode":			##class(cosFaker.Address).PostCode(),
        "secondaryaddress":	##class(cosFaker.Address).SecondaryAddress(),
        "buildingnumber":	##class(cosFaker.Address).BuildingNumber(),
        
        //Class: App
        "function":         ##class(cosFaker.App).FunctionName($Get(args(1),""),$Get(args(2),"")),
        "functionname":     ##class(cosFaker.App).FunctionName($Get(args(1),""),$Get(args(2),"")),
        "app.action":		##class(cosFaker.App).AppAction($Get(args(1),"")),
        "app.type":			##class(cosFaker.App).AppType(),
                
        //Class: Coffee
        "coffee.blendname": ##class(cosFaker.Coffee).BlendName(),
        "coffee.blend":     ##class(cosFaker.Coffee).BlendName(),
        "coffee.variety":   ##class(cosFaker.Coffee).Variety(),
        "coffee.notes":     ##class(cosFaker.Coffee).Notes(),
        "coffee.origin":    ##class(cosFaker.Coffee).Origin(),
        
        //Class: Commerce
        "price":            ##class(cosFaker.Commerce).Price($Get(args(1),"0"),$Get(args(2),"1000"),$Get(args(3),"2"),$Get(args(4),"")),
        "cnpj":             ##class(cosFaker.Commerce).CNPJ($Get(args(1),"1")),
        "commerce.color":	##class(cosFaker.Commerce).Color(),
        "department":		##class(cosFaker.Commerce).Department(),
        "promotioncode":	##class(cosFaker.Commerce).PromotionCode(),
        "productname":		##class(cosFaker.Commerce).ProductName(),

        //Class: Company
        "profession":       ##class(cosFaker.Company).Profession(),
        "industry":         ##class(cosFaker.Company).Industry(),
        "company.name":		##class(cosFaker.Company).Name(),
        
        //Class: Dates
        "date":             $Case(($Random(2)+1),1:##class(cosFaker.Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),:##class(cosFaker.Dates).Forward($Get(args(1),"365"),$Get(args(2),"3"))),
        "dates.forward":    ##class(cosFaker.Dates).Forward($Get(args(1),"365"),$Get(args(2),"3")),
        "dates.backward":   ##class(cosFaker.Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),
        "date.forward":     ##class(cosFaker.Dates).Forward($Get(args(1),"365"),$Get(args(2),"3")),
        "date.backward":    ##class(cosFaker.Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),

        //Class: DragonBall
        "dragonball.character": ##class(cosFaker.DragonBall).Character(),
        
        //Class: File
        "filename":         ##class(cosFaker.File).Filename($Get(args(1),""),$Get(args(2),""),$Get(args(3),""),$Get(args(4),"/")),
        "file.extension":   ##class(cosFaker.File).Extension(),
        "file.mimetype":    ##class(cosFaker.File).MimeType(),
        
        //Class: Finance
        "amount":           ##class(cosFaker.Finance).Amount($Get(args(1),"0"),$Get(args(2),"10000"),$Get(args(3),"2"),$Get(args(4),","),$Get(args(5),"")),
        "creditcard":       ##class(cosFaker.Finance).CreditCard($Get(args(1),"")),
        "bitcoinaddress":   ##class(cosFaker.Finance).BitcoinAddress($Get(args(1),"24"),$Get(args(1),"34")),
        
        //Class: Game
        "mortalkombat":     ##class(cosFaker.Game).MortalKombat(),
        "streetfighter":    ##class(cosFaker.Game).StreetFighter(),
        "game.card":        ##class(cosFaker.Game).Card($Get(args(1),"0")),
        "card":             ##class(cosFaker.Game).Card($Get(args(1),"0")),
        
        //Class: Internet
        "username":         ##class(cosFaker.Internet).UserName($Get(args(1),""),$Get(args(2),"")),
        "email":            ##class(cosFaker.Internet).Email($Get(args(1),""),$Get(args(2),""),$Get(args(3),"")),
        "protocol":         ##class(cosFaker.Internet).Protocol(),
        "domainword":       ##class(cosFaker.Internet).DomainWord(),
        "domain":           ##class(cosFaker.Internet).DomainName(),
        "domainname":       ##class(cosFaker.Internet).DomainName(),
        "url":              ##class(cosFaker.Internet).Url(),
        "avatar":           ##class(cosFaker.Internet).Avatar($Get(args(1),"")),
        "slug":             ##class(cosFaker.Internet).Slug($Get(args(1),""),$Get(args(2),"")),
        "ipv4":             ##class(cosFaker.Internet).IPV4(),
        "ipv6":             ##class(cosFaker.Internet).IPV6(),
        "mac":              ##class(cosFaker.Internet).MAC(),
        
        //Class: Job
        "job.title":        ##class(cosFaker.Job).Title(),
        "job.skills":       ##class(cosFaker.Job).Skills(),
        "skill":            ##class(cosFaker.Job).Skills(),
        "job.field":        ##class(cosFaker.Job).Field(),
        
        //Class: Lorem
        "word":             ##class(cosFaker.Lorem).Word(),
        "words":            ##class(cosFaker.Lorem).Words($Get(args(1),"")),
        "sentence":         ##class(cosFaker.Lorem).Sentence("",$Get(args(1),3),$Get(args(2),10)),
        "sentences":        ##class(cosFaker.Lorem).Sentences($Get(args(1),""),$Get(args(2),"")),
        "paragraph":        ##class(cosFaker.Lorem).Paragraph($Get(args(1),"")),
        "p":                ##class(cosFaker.Lorem).Paragraph($Get(args(1),"")),
        "paragraphs":       ##class(cosFaker.Lorem).Paragraphs($Get(args(1),""),$Get(args(2),"")),
        "lines":            ##class(cosFaker.Lorem).Lines($Get(args(1),"")),
        "text":             ##class(cosFaker.Lorem).Text($Get(args(1),1)),
        "hipster":          ##class(cosFaker.Lorem).Hipster($Get(args(1),""),$Get(args(2),"")),
        
        //Class: Name
        "name":             ##class(cosFaker.Name).FullName($Get(args(1),"")),
        "fullname":         ##class(cosFaker.Name).FullName($Get(args(1),"")),
        "firstname":        ##class(cosFaker.Name).FirstName($Get(args(1),"")),
        "fname":            ##class(cosFaker.Name).FirstName($Get(args(1),"")),
        "lastname":         ##class(cosFaker.Name).LastName(),
        "lname":            ##class(cosFaker.Name).LastName(),
        "suffix":           ##class(cosFaker.Name).Suffix(),
        
        //Class: Person
        "cpf":              ##class(cosFaker.Person).cpf($Get(args(1),"1")),
        
        //Class: Phone
        "areacode":         ##class(cosFaker.Phone).AreaCode(),
        "phonenumber":      ##class(cosFaker.Phone).PhoneNumber($Get(args(1),"1")),
        "phone":            ##class(cosFaker.Phone).PhoneNumber($Get(args(1),"1")),
        "cellphone":        ##class(cosFaker.Phone).CellPhone($Get(args(1),"1")),
        
        //Class: Pokemon
        "pokemon":          ##class(cosFaker.Pokemon).Pokemon(),
        
        //Class: StarWars
        "starwars.character":##class(cosFaker.StarWars).Characters(),
        "starwars.droid":   ##class(cosFaker.StarWars).Droids(),
        "starwars.planet":  ##class(cosFaker.StarWars).Planets(),
        "starwars.quote":   ##class(cosFaker.StarWars).Quotes(),
        "starwars.specie":  ##class(cosFaker.StarWars).Species(),
        "starwars.vehicle": ##class(cosFaker.StarWars).Vehicles(),
        "starwars.wookieword":##class(cosFaker.StarWars).WookieWords(),
        "starwars.wookiesentence":##class(cosFaker.StarWars).WookieSentence($Get(args(1),"")),
        
        //Class: UFC
        "ufc.category":     ##class(cosFaker.UFC).Category(),
        "ufc.fighter":      ##class(cosFaker.UFC).Fighter($Get(args(1),""),$Get(args(2),""),$Get(args(3),"0")),
        "ufc.featherweight":##class(cosFaker.UFC).Featherweight($Get(args(1),"")),
        "ufc.middleweight": ##class(cosFaker.UFC).Middleweight($Get(args(1),"")),
        "ufc.welterweight": ##class(cosFaker.UFC).Welterweight($Get(args(1),"")),
        "ufc.lightweight":  ##class(cosFaker.UFC).Lightweight($Get(args(1),"")),
        "ufc.bantamweight": ##class(cosFaker.UFC).Bantamweight($Get(args(1),"")),
        "ufc.flyweight":    ##class(cosFaker.UFC).Flyweight($Get(args(1),"")),
        "ufc.heavyweight":  ##class(cosFaker.UFC).Heavyweight($Get(args(1),"")),
        "ufc.lightheavyweight":##class(cosFaker.UFC).LightHeavyweight($Get(args(1),"")),
        "ufc.nickname":     ##class(cosFaker.UFC).Nickname($Get(args(1),"")),    
        
        :$Random(99) + 1)
}

/// Used by SQL and JSON class
ClassMethod GetInfo(pTypeField As %String, Output pType As %String, Output pParams, pSanitize As %String = "'") As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        Set pParams = 0
        If $Find(pTypeField,pSanitize)>0{
           Set p2 = $Replace($Piece(pTypeField,pSanitize,2)," ","_")
           Set $Piece(pTypeField,pSanitize,2) = p2
           Set pTypeField = $Translate(pTypeField,pSanitize,"")
        }
        Set ListType = $ListFromString(pTypeField," "), ptr = 0, idx = 0
        Set pType = $List(ListType,1)
        For i=2:1:$ListLength(ListType){
            Set idx = idx + 1
            Set pParams = idx
            Set pParams(idx) = $Translate($List(ListType,i),"_"," ")
        }   
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod Validate(pField, pDescription) As %Status [ Private ]
{
    Set tSC = $$$OK
    If pField = ""{
        Set tSC = $$$ERROR(5002,pDescription)
    }
    Quit tSC
}

Projection Reference As core;

ClassMethod CreateProjection(classname As %String, ByRef parameters As %String, modified As %String, qstruct) As %Status
{
	Set tSC = $$$OK
	Try {
		/// Must update the documentation of classes SQL and JSON
		Set initDescJSON = "<h1>cosFaker JSON</h1><br/> <span style=""font-size:10px;"">Author: <b>Andrei Luiz Nenevê - <a href=""mailto:alneneve@gmail.com"" target=""_blank"">Email</a> - <a href=""https://github.com/AndreiLN"" target=""_blank"">Github</a></b></span> <p><b>This class will generate random data according the options in cosFaker for any json string, it can return an JSON String or Object. Examples are shown in method's description.</b></p><br/><br/> <h3>Valid Types:</h3> <div style=""padding-left:25px;border: 1px dashed #ddd;background-color:#eee;""> <br/><b>*** You can aways pass a number before the type to generate an array of the desired type</b><br/><br/><b>[]</b> = Parameters (Aways optional)<b></b>, <b style=""color:darkgreen;"">{}</b> = Default, <b style=""color:darkblue;"">()</b> = List of Valid Values<b></b>, <b style=""color:darkred;"">"" ""</b> = Must pass the string in double quotation marks<br/><br/>"
		Set initDescSQL = "<h1>cosFaker SQL</h1><br/> <span style=""font-size:10px;"">Author: <b>Andrei Luiz Nenevê - <a href=""mailto:alneneve@gmail.com"" target=""_blank"">Email</a> - <a href=""https://github.com/AndreiLN"" target=""_blank"">Github</a></b></span> <p><b>This class will generate random data according the options in cosFaker for any table. Examples are shown in method's description.</b></p><br/><br/> <h3>Valid Types:</h3> <div style=""padding-left:25px;border: 1px dashed #ddd;background-color:#eee;""><b>[]</b> = Parameters (Aways optional)<b></b>, <b style=""color:darkgreen;"">{}</b> = Default, <b style=""color:darkblue;"">()</b> = List of Valid Values<b></b>, <b style=""color:darkred;"">' '</b> = Must pass the string in single quotation marks<br/><br/>"
		Set endDescJSON = "</div>"
		Set endDescSQL = "</div><br/><h3>Examples:</h3> <example> Do ##class(cosFaker.SQL).Insert(""Sample_Data.Clients"",""City,Name,NickName"",""city SC,name 2,ufc.nickname 'Anderson Silva'"",1) ;INSERT INTO Sample_Data.Clients (City,Name,NickName) VALUES ('Trombudo Central','Leandro Mendes','The Spider') </example> <example> Do ##class(cosFaker.SQL).Insert(""Sample_Data.Clients"",""City,Name,Salary"",""city SC,name 2,price 1000 2000 2 R$"",2) ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Celso Ramos','Luiggi Dias Nunes Saraiva','R$1654.30') ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Nova Veneza','Fabiano da Costa','R$1255.13') </example>"
	
		Set Desc = ""_
		"<b>Address:</b><ul>"_
			"<li>streetprefix</li>"_
			"<li>street || streetname || street-name</li>"_
			"<li>latitude</li>"_
			"<li>longitude</li>"_
			"<li>capital</li>"_
			"<li>state [<b>full-name</b><span style=""color:darkgreen;"">{0}</span>]</li>"_
			"<li>statefull</li>"_
			"<li>city [<b>state</b>]</li>"_
			"<li>country [<b>abbreviated</b>]</li>"_
			"<li>postcode</li>"_
			"<li>secondary-address || secondaryaddress</li>"_
			"<li>building-number || buildingnumber</li>"_
		"</ul>"_
		"<b>App:</b><ul>"_
			"<li>function || functionname || function-name [<b>group</b><span style=""color:darkblue;"">(SQL,IF,FUN)</span>,<b>separator</b>]</li>"_
			"<li>app.action [<b>group</b><span style=""color:darkblue;"">(SQL,IF,FUN)</span>]</li>"_
			"<li>app.type </li>"_
		"</ul>"_
		"<b>Coffee:</b><ul>"_
			"<li>coffee.blendname || coffee.blend</li>"_
			"<li>coffee.variety</li>"_
			"<li>coffee.notes</li>"_
			"<li>coffee.origin</li>"_
		"</ul>"_
		"<b>Commerce:</b><ul>"_
			"<li>price [<b>min</b><span style=""color:darkgreen;"">{0}</span>,<b>max</b><span style=""color:darkgreen;"">{1000}</span>,<b>decimal-places</b><span style=""color:darkgreen;"">{2}</span>,<b>symbol</b>]</li>"_
			"<li>cnpj [<b>pretty</b><span style=""color:darkgreen;"">{1}</span>]</li>"_
			"<li>commerce.color</li>"_
			"<li>department</li>"_
			"<li>promotioncode || promotion-code</li>"_
			"<li>productname || product-name</li>"_
		"</ul>"_
		"<b>Company:</b><ul>"_
			"<li>profession</li>"_
			"<li>industry</li>"_
			"<li>company.name</li>"_
		"</ul>"_
		"<b>Dates:</b><ul>"_
			"<li>date [<b>days</b><span style=""color:darkgreen;"">{365}</span>,<b>format</b><span style=""color:darkgreen;"">{3}</span>]</li>"_
			"<li>dates.forward || date.forward [<b>days</b><span style=""color:darkgreen;"">{365}</span>,<b>format</b><span style=""color:darkgreen;"">{3}</span>]</li>"_
			"<li>dates.backward || date.backward [<b>days</b><span style=""color:darkgreen;"">{365}</span>,<b>format</b><span style=""color:darkgreen;"">{3}</span>]</li>"_
		"</ul>"_
		"<b>DragonBall:</b><ul>"_
			"<li>dragonball.character</li>"_
		"</ul>"_
		"<b>File:</b><ul>"_
			"<li>filename [<b>directory</b>,<b>name</b>,<b>extension</b>,<b>separator</b><span style=""color:darkgreen;"">{/}</span>]</li>"_
			"<li>file.extension</li>"_
			"<li>file.mimetype</li>"_
		"</ul>"_
		"<b>Finance:</b><ul>"_
			"<li>amount [<b>min</b><span style=""color:darkgreen;"">{0}</span>,<b>max</b><span style=""color:darkgreen;"">{10000}</span>,<b>decimal-places</b><span style=""color:darkgreen;"">{2}</span>,<b>separator</b><span style=""color:darkgreen;"">{,}</span>,<b>symbol</b>]</li>"_
			"<li>creditcard || credit-card [<b>type</b><span style=""color:darkblue;"">(visa,mastercard,american_express)</span>]</li>"_
			"<li>bitcoinaddress || bitcoin-address [<b>min</b><span style=""color:darkgreen;"">{24}</span>,<b>max</b><span style=""color:darkgreen;"">{34}</span>]</li>"_
		"</ul>"_
		"<b>Game:</b><ul>"_
			"<li>game.card || card [<b>abbreviated</b><span style=""color:darkgreen;"">{0}</span>]</li>"_
			"<li>mortalkombat</li>"_
			"<li>streetfighter</li>"_
		"</ul>"_
		"<b>Internet:</b><ul>"_
			"<li>username [<b>first-name</b>,<b>last-name</b>]</li>"_
			"<li>email [<b>first-name</b>,<b>last-name</b>,<b>provider</b>]</li>"_
			"<li>protocol</li>"_
			"<li>domainword</li>"_
			"<li>domain || domainname || domain-name</li>"_
			"<li>avatar [<b>size</b>]</li>"_
			"<li>url</li>"_
			"<li>slug [<b style=""color:darkred"">'words'</b>,<b>glue</b>]</li>"_
			"<li>ipv4</li>"_
			"<li>ipv6</li>"_
			"<li>mac</li>"_
		"</ul>"_
		"<b>Job:</b><ul>"_
			"<li>job.title</li>"_
			"<li>job.skills || skill</li>"_
			"<li>job.field</li>"_
		"</ul>"_
		"<b>Lorem:</b><ul>"_
			"<li>word</li>"_
			"<li>words [<b>amount</b>]</li>"_
			"<li>sentence [<b>min-amount</b><span style=""color:darkgreen;"">{3}</span>,<b>max-amount</b><span style=""color:darkgreen;"">{10}</span>]</li>"_
			"<li>sentences [<b>sentence-amount</b>,<b>separator</b>]</li>"_
			"<li>paragraph || p [<b>sentence-amount</b>]</li>"_
			"<li>paragraphs [<b>paragraph-amount</b>,<b>separator</b>]</li>"_
			"<li>lines [<b>line-amount</b>]</li>"_
			"<li>text [<b>amount</b>]</li>"_
			"<li>hipster [<b>paragraph-amount</b>,<b>separator</b>]</li>"_
		"</ul>"_
		"<b>Name:</b><ul>"_
			"<li>name || fullname || full-name [<b>gender</b><span style=""color:darkblue;"">(1=""female"",2=""male"")]</li>"_
			"<li>firstname || fname || first-name [<b>gender</b><span style=""color:darkblue;"">(1=""female"",2=""male"")]</li>"_
			"<li>lastname || lname || last-name [<b>gender</b><span style=""color:darkblue;"">(1=""female"",2=""male"")]</li>"_
			"<li>suffix</li>"_
			"</ul>"_
		"<b>Person:</b><ul>"_
			"<li>cpf [<b>Pretty</b><span style=""color:darkgreen;"">{1}</span>]</li>"_
		"</ul>"_
		"<b>Phone:</b><ul>"_
			"<li>areacode || area-code</li>"_
			"<li>phonenumber || phone [<b>area-code</b><span style=""color:darkgreen;"">{1}</span>]</li>"_
			"<li>cellphone || cell-phone [<b>area-code</b><span style=""color:darkgreen;"">{1}</span>]</li>"_
		"</ul>"_
		"<b>Pokemon:</b><ul>"_
			"<li>pokemon</li>"_
		"</ul>"_
		"<b>StarWars:</b><ul>"_
			"<li>starwars.character</li>"_
			"<li>starwars.droid</li>"_
			"<li>starwars.planet</li>"_
			"<li>starwars.quote</li>"_
			"<li>starwars.specie</li>"_
			"<li>starwars.vehicle</li>"_
			"<li>starwars.wookieword</li>"_
			"<li>starwars.wookiesentence [<b>amount</b>]</li>"_
		"</ul>"_
		"<b>UFC:</b><ul>"_
			"<li>ufc.category</li>"_
			"<li>ufc.fighter [<b>category</b>,<b>country</b>,<b>with-country</b><span style=""color:darkgreen;"">{0}</span>]</li>"_
			"<li>ufc.featherweight [<b>country</b>]</li>"_
			"<li>ufc.middleweight [<b>country</b>]</li>"_
			"<li>ufc.welterweight [<b>country</b>]</li>"_
			"<li>ufc.lightweight [<b>country</b>]</li>"_
			"<li>ufc.bantamweight [<b>country</b>]</li>"_
			"<li>ufc.flyweight [<b>country</b>]</li>"_
			"<li>ufc.heavyweight [<b>country</b>]</li>"_
			"<li>ufc.lightheavyweight [<b>country</b>]</li>"_
			"<li>ufc.nickname [<b style=""color:darkred"">'fighter-name'</b>]</li>"_
		"</ul><br>"_
		"<ul><li>Any other will be an random integer between 1 and 99</li></ul>"
		
		Set SQLClass = ##class(%Dictionary.ClassDefinition).%OpenId("cosFaker.SQL")
		If (SQLClass.Description'=(initDescSQL_Desc_endDescSQL)){
			Set SQLClass.Description = initDescSQL_Desc_endDescSQL
			$$$THROWONERROR(tSC, SQLClass.%Save())
			Set LastUpdate = ##class(%Dictionary.ParameterDefinition).%OpenId("cosFaker.SQL||LastUpdate")
			Set LastUpdate.Default = $ZDateTime($Horolog,3)
			$$$THROWONERROR(tSC, LastUpdate.%Save())
			Write !,"Updated description in SQL class!",!
			Do $System.OBJ.Compile("cosFaker.SQL")
		}
		Set JSONClass = ##class(%Dictionary.ClassDefinition).%OpenId("cosFaker.JSON")
		If (JSONClass.Description'=(initDescJSON_Desc_endDescJSON)){
			Set LastUpdate = ##class(%Dictionary.ParameterDefinition).%OpenId("cosFaker.JSON||LastUpdate")
			Set LastUpdate.Default = $ZDateTime($Horolog,3)
			$$$THROWONERROR(tSC, LastUpdate.%Save())
			Set JSONClass.Description = initDescJSON_Desc_endDescJSON
			$$$THROWONERROR(tSC, JSONClass.%Save())
			Write !,"Updated description in JSON class!",!
			Do $System.OBJ.Compile("cosFaker.JSON")
		}
		
	} Catch tException {
		Set:$$$ISOK(tSC) tSC = tException.AsStatus()
	}
	Quit tSC
}

ClassMethod Class() As %String [ Private ]
{
	Quit $ZConvert(..%ClassName(),"L")
}

}

