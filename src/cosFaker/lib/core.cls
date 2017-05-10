Class cosFaker.lib.core
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

ClassMethod GetFile(pDirFname As %String, pSearch As %String = "") As %String [ Private ]
{
	Set file = ##class(%File).%New(..GetPath()_"cosFaker\lang"_pDirFname)
	Do file.Open("R")
	Set Ret = ""
	While 'file.AtEnd{
		Set val = file.Read()
		If ((pSearch'="")&&($Find(val,pSearch_"={")>0)){
			Set Ret = $Piece($Piece(val,"{",2),"}",1)
			Quit
		}
		Set:pSearch="" Ret = Ret_val
	}
	Do file.Close()
	Quit Ret
}

ClassMethod SampleFromFile(pName As %String, pSearch As %String = "", pLang As %String = "") As %String [ Private ]
{
	Set:pLang="" pLang = ..GetLang()
	Quit ..Sample($ListFromString(..GetFile("\"_pLang_"\"_pName_".fkr",pSearch),","))
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
        
        //Class: App
        "function":         ##class(cosFaker.App).FunctionName($Get(args(1),""),$Get(args(2),"")),
        "functionname":     ##class(cosFaker.App).FunctionName($Get(args(1),""),$Get(args(2),"")),
                
        //Class: Coffee
        "coffee.blendname": ##class(cosFaker.Coffee).BlendName(),
        "coffee.blend":     ##class(cosFaker.Coffee).BlendName(),
        "coffee.variety":   ##class(cosFaker.Coffee).Variety(),
        "coffee.notes":     ##class(cosFaker.Coffee).Notes(),
        "coffee.origin":    ##class(cosFaker.Coffee).Origin(),
        
        //Class: Commerce
        "price":            ##class(cosFaker.Commerce).Price($Get(args(1),"0"),$Get(args(2),"1000"),$Get(args(3),"2"),$Get(args(4),"")),
        "cnpj":             ##class(cosFaker.Commerce).CNPJ($Get(args(1),"1")),

        //Class: Company
        "profession":       ##class(cosFaker.Company).Profession(),
        "industry":         ##class(cosFaker.Company).Industry(),
        
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

}

