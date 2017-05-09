/// <h1>cosFaker SQL</h1><br/>
/// <span style="font-size:10px;">Author: <b>Andrei Luiz Nenevê - <a href="mailto:alneneve@gmail.com" target="_blank">Email</a> - <a href="https://github.com/AndreiLN" target="_blank">Github</a></b></span>
/// <p><b>This class will generate random data according the options in cosFaker for any table. Examples are shown in method's description.</b></p><br/><br/>
/// <h3>Valid Types:</h3>
/// <div style="padding-left:25px;border: 1px dashed #ddd;background-color:#eee;">
/// <b>[]</b> = Parameters (Aways optional)<b></b>, <b style="color:darkgreen;">{}</b> = Default, <b style="color:darkblue;">()</b> = List of Valid Values<b></b>, <b style="color:darkred;">' '</b> = Must pass the string in single quotation marks<br/><br/>
/// <b>Address:</b><ul>
/// <li>streetprefix</li>
/// <li>street || streetname || street-name</li>
/// <li>latitude</li>
/// <li>longitude</li>
/// <li>capital</li>
/// <li>state [<b>full-name</b><span style="color:darkgreen;">{0}</span>]</li>
/// <li>statefull</li>
/// <li>city [<b>state</b>]</li>
/// </ul>
/// <b>App:</b><ul>
/// <li>function || functionname || function-name [<b>group</b><span style="color:darkblue;">(SQL,IF,FUN)</span>,<b>separator</b>]</li>
/// </ul>
/// <b>Coffee:</b><ul>
/// <li>coffee.blendname || coffee.blend</li>
/// <li>coffee.variety</li>
/// <li>coffee.notes</li>
/// <li>coffee.origin</li>
/// </ul>
/// <b>Commerce:</b><ul>
/// <li>price [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{1000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>symbol</b>]</li>
/// <li>cnpj [<b>pretty</b><span style="color:darkgreen;">{1}</span>]</li>
/// </ul>
/// <b>Company:</b><ul>
/// <li>profession</li>
/// <li>industry</li>
/// </ul>
/// <b>Dates:</b><ul>
/// <li>date [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li>
/// <li>dates.forward || date.forward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li>
/// <li>dates.backward || date.backward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li>
/// </ul>
/// <b>DragonBall:</b><ul>
/// <li>dragonball.character</li>
/// </ul>
/// <b>File:</b><ul>
/// <li>filename [<b>directory</b>,<b>name</b>,<b>extension</b>,<b>separator</b><span style="color:darkgreen;">{/}</span>]</li>
/// <li>file.extension</li>
/// <li>file.mimetype</li>
/// </ul>
/// <b>Finance:</b><ul>
/// <li>amount [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{10000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>separator</b><span style="color:darkgreen;">{,}</span>,<b>symbol</b>]</li>
/// <li>creditcard || credit-card [<b>type</b><span style="color:darkblue;">(visa,mastercard,american_express)</span>]</li>
/// <li>bitcoinaddress || bitcoin-address [<b>min</b><span style="color:darkgreen;">{24}</span>,<b>max</b><span style="color:darkgreen;">{34}</span>]</li>
/// </ul>
/// <b>Game:</b><ul>
/// <li>game.card || card [<b>abbreviated</b><span style="color:darkgreen;">{0}</span>]</li>
/// <li>mortalkombat</li>
/// <li>streetfighter</li>
/// </ul>
/// <b>Internet:</b><ul>
/// <li>username [<b>first-name</b>,<b>last-name</b>]</li>
/// <li>email [<b>first-name</b>,<b>last-name</b>,<b>provider</b>]</li>
/// <li>protocol</li>
/// <li>domainword</li>
/// <li>domain || domainname || domain-name</li>
/// <li>avatar [<b>size</b>]</li>
/// <li>url</li>
/// <li>slug [<b style="color:darkred">'words'</b>,<b>glue</b>]</li>
/// </ul>
/// <b>Job:</b><ul>
/// <li>job.title</li>
/// <li>job.skills || skill</li>
/// <li>job.field</li>
/// </ul>
/// <b>Lorem:</b><ul>
/// <li>word</li>
/// <li>words [<b>amount</b>]</li>
/// <li>sentence [<b>min-amount</b><span style="color:darkgreen;">{3}</span>,<b>max-amount</b><span style="color:darkgreen;">{10}</span>]</li>
/// <li>sentences [<b>sentence-amount</b>,<b>separator</b>]</li>
/// <li>paragraph || p [<b>sentence-amount</b>]</li>
/// <li>paragraphs [<b>paragraph-amount</b>,<b>separator</b>]</li>
/// <li>lines [<b>line-amount</b>]</li>
/// <li>text [<b>amount</b>]</li>
/// <li>hipster [<b>paragraph-amount</b>,<b>separator</b>]</li>
/// </ul>
/// <b>Name:</b><ul>
/// <li>name || fullname || full-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li>
/// <li>firstname || fname || first-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li>
/// <li>lastname || lname || last-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li>
/// <li>suffix</li>
/// </ul>
/// <b>Person:</b><ul>
/// <li>cpf [<b>Pretty</b><span style="color:darkgreen;">{1}</span>]</li>
/// </ul>
/// <b>Phone:</b><ul>
/// <li>areacode || area-code</li>
/// <li>phonenumber || phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li>
/// <li>cellphone || cell-phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li>
/// </ul>
/// <b>Pokemon:</b><ul>
/// <li>pokemon</li>
/// </ul>
/// <b>StarWars:</b><ul>
/// <li>starwars.character</li>
/// <li>starwars.droid</li>
/// <li>starwars.planet</li>
/// <li>starwars.quote</li>
/// <li>starwars.specie</li>
/// <li>starwars.vehicle</li>
/// <li>starwars.wookieword</li>
/// <li>starwars.wookiesentence [<b>amount</b>]</li>
/// </ul>
/// <b>UFC:</b><ul>
/// <li>ufc.category</li>
/// <li>ufc.fighter [<b>category</b>,<b>country</b>,<b>with-country</b><span style="color:darkgreen;">{0}</span>]</li>
/// <li>ufc.featherweight [<b>country</b>]</li>
/// <li>ufc.middleweight [<b>country</b>]</li>
/// <li>ufc.welterweight [<b>country</b>]</li>
/// <li>ufc.lightweight [<b>country</b>]</li>
/// <li>ufc.bantamweight [<b>country</b>]</li>
/// <li>ufc.flyweight [<b>country</b>]</li>
/// <li>ufc.heavyweight [<b>country</b>]</li>
/// <li>ufc.lightheavyweight [<b>country</b>]</li>
/// <li>ufc.nickname [<b style="color:darkred">'fighter-name'</b>]</li>
/// </ul><br>
/// <ul><li>Any other will be an random integer between 1 and 99</li></ul>
/// </div><br/><h3>Examples:</h3>
/// <example>
/// Do ##class(cosFaker.SQL).Insert("Sample_Data.Clients","City,Name,NickName","city BR SC,name 2,ufc.nickname 'Anderson Silva'",1)
/// ;INSERT INTO Sample_Data.Clients (City,Name,NickName) VALUES ('Trombudo Central','Leandro Mendes','The Spider')
/// </example>
/// <example>
/// Do ##class(cosFaker.SQL).Insert("Sample_Data.Clients","City,Name,Salary","city BR SC,name 2,price 1000 2000 2 R$",2)
/// ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Celso Ramos','Luiggi Dias Nunes Saraiva','R$1654.30')
/// ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Nova Veneza','Fabiano da Costa','R$1255.13')
/// </example>
Class cosFaker.SQL Extends cosFaker.lib.core
{

/// Version of cosFaker SQL
Parameter Version As %String = "BETA 0.0.1";

/// Last time that this class was updated
Parameter LastUpdate As %String = "2017-05-09 13:55:00";

/// Testing Enabled will show the SQL's queries and the parameters
Parameter Testing As %Boolean = 0;

/// Generates data for an table in caché</br>
/// Parameters:<br/>
/// <b>pTableName</b>: Name of the table in SQL format (E.g. "person_fighters.UFC")<br/>
/// <b>pTableFields</b>: Fields of the table that will be populated (E.g. "Name,Email,Phone,Birthday,Description")<br/>
/// <b>pTypeOfFields</b>: Type of the fields that will be populated (E.g. "ufc.figther,email,phone,date,words 3")<br/>
/// <b>pAmount</b>: Amount of records to generate<br/>
/// <br/>Example:<br/>
/// <example>
/// Do ##class(cosFaker.SQL).Insert("SamplePrj_PierogiDelivery_Data.Clients",
///     "City,Name,Street",
///     "city BR SC,name 2,street",
///     3)
/// </example>
ClassMethod Insert(pTableName As %String = "", pTableFields As %String = "", pTypeOfFields As %String, pAmount As %Integer = 1) As %Status
{
    Set tSC = $$$OK
    Try {
        $$$THROWONERROR(tSC, ..PrepareSQL(0,pTableName,pTableFields,pTypeOfFields,"",pAmount))
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

/// Updates data for an table in caché</br>
/// Parameters:<br/>
/// <b>pTableName</b>: Name of the table in SQL format (E.g. "person_fighters.UFC")<br/>
/// <b>pTableFields</b>: Fields of the table that will be populated (E.g. "Name,Email,Phone,Birthday,Description")<br/>
/// <b>pTypeOfFields</b>: Type of the fields that will be populated (E.g. "ufc.figther,email,phone,date,words 3")<br/>
/// <b>pWhereClause</b>: Where clause of the update (E.g. "ID > 50")<br/>
/// <br/>Example:<br/>
/// <example>
/// Do ##class(cosFaker.SQL).Update("SamplePrj_PierogiDelivery_Data.Clients",
///         "City,Name,Street",
///         "city BR SC,name 2,street",
///         "ID > 5000")
/// </example>
ClassMethod Update(pTableName As %String = "", pTableFields As %String = "", pTypeOfFields As %String, pWhereClause As %String = "") As %Status
{
    Set tSC = $$$OK
    Try {
        $$$THROWONERROR(tSC, ..PrepareSQL(1,pTableName,pTableFields,pTypeOfFields,pWhereClause))        
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod PrepareSQL(pUpdate As %Boolean = 0, pTableName As %String = "", pTableFields As %String = "", pTypeOfFields As %String = "", pWhereClause As %String = "", pAmount As %Integer = 1) As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        $$$THROWONERROR(tSC, ..ValidateFields(pTableName,pTableFields,pTypeOfFields))
        For i=1:1:pAmount{
            Set SQL = "INSERT INTO "
            Set:pUpdate SQL = "UPDATE "
            Set SQL = SQL_pTableName_" ("_pTableFields_") VALUES (",
                ListFields = $ListFromString(pTableFields,","), 
                ListTypes = $ListFromString(pTypeOfFields,","), 
                ptr = 0, 
                idx = 1, 
                params = 0
            While $ListNext(ListFields,ptr,value){
                $$$THROWONERROR(tSC, ..GetInfo($List(ListTypes,idx),.type,.args))
                Set SQL = SQL_"?,"
                Set params = idx
                Set params(idx) = ..DefineValue(type,args...)
                Set idx = idx + 1
            }
            Set SQL = $Extract(SQL,1,*-1)_")"
            Set:pWhereClause'="" SQL = SQL_" WHERE "_pWhereClause
            Set statement = ##class(%SQL.Statement).%New()
            Write:..#Testing #,SQL,!
            ZWrite:..#Testing params
            Write:..#Testing !!
            $$$THROWONERROR(tSC, statement.%Prepare(SQL))
            Set tRS = statement.%Execute(params...)
        }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod GetInfo(pTypeField As %String, Output pType As %String, Output pParams) As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        Set pParams = 0
        If $Find(pTypeField,"'")>0{
           Set p2 = $Replace($Piece(pTypeField,"'",2)," ","_")
           Set $Piece(pTypeField,"'",2) = p2
           Set pTypeField = $Translate(pTypeField,"'","")
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

ClassMethod ValidateFields(pTableName = "", pTableFields = "", pTypeOfFields = "") As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        $$$THROWONERROR(tSC, ..Validate(pTableName,"Invalid table name!"))
        $$$THROWONERROR(tSC, ..Validate(pTableFields,"Must be specified some fields!"))
        $$$THROWONERROR(tSC, ..Validate(pTypeOfFields,"Invalid table name!"))
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod DefineValue(pType As %String, args...) As %String [ Private ]
{
    Quit $Case($Translate($ZConvert(pType,"L"),"-",""),     
        //Class: Address
        "streetprefix":     ##class(Address).StreetPrefix(),
        "streetsuffix":     ##class(Address).StreetSuffix(),
        "street":           ##class(Address).StreetName(),
        "streetname":       ##class(Address).StreetName(),
        "latitude":         ##class(Address).Latitude(),
        "longitude":        ##class(Address).Longitude(),
        "capital":          ##class(Address).Capital($Get(args(1),"BR")),
        "state":            ##class(Address).State($Get(args(1),0),$Get(args(2),"BR")),
        "statefull":        ##class(Address).State(1,$Get(args(1),"BR")),
        "city":             ##class(Address).City($Get(args(1),"BR"),$Get(args(2),"")),
        
        //Class: App
        "function":         ##class(App).FunctionName($Get(args(1),""),$Get(args(2),"")),
        "functionname":     ##class(App).FunctionName($Get(args(1),""),$Get(args(2),"")),
                
        //Class: Coffee
        "coffee.blendname": ##class(Coffee).BlendName(),
        "coffee.blend":     ##class(Coffee).BlendName(),
        "coffee.variety":   ##class(Coffee).Variety(),
        "coffee.notes":     ##class(Coffee).Notes(),
        "coffee.origin":    ##class(Coffee).Origin(),
        
        //Class: Commerce
        "price":            ##class(Commerce).Price($Get(args(1),"0"),$Get(args(2),"1000"),$Get(args(3),"2"),$Get(args(4),"")),
        "cnpj":             ##class(Commerce).CNPJ($Get(args(1),"1")),

        //Class: Company
        "profession":       ##class(Company).Profession(),
        "industry":         ##class(Company).Industry(),
        
        //Class: Dates
        "date":             $Case(($Random(2)+1),1:##class(Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),:##class(Dates).Forward($Get(args(1),"365"),$Get(args(2),"3"))),
        "dates.forward":    ##class(Dates).Forward($Get(args(1),"365"),$Get(args(2),"3")),
        "dates.backward":   ##class(Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),
        "date.forward":     ##class(Dates).Forward($Get(args(1),"365"),$Get(args(2),"3")),
        "date.backward":    ##class(Dates).Backward($Get(args(1),"365"),$Get(args(2),"3")),

        //Class: DragonBall
        "dragonball.character": ##class(DragonBall).Character(),
        
        //Class: File
        "filename":         ##class(File).Filename($Get(args(1),""),$Get(args(2),""),$Get(args(3),""),$Get(args(4),"/")),
        "file.extension":   ##class(File).Extension(),
        "file.mimetype":    ##class(File).MimeType(),
        
        //Class: Finance
        "amount":           ##class(Finance).Amount($Get(args(1),"0"),$Get(args(2),"10000"),$Get(args(3),"2"),$Get(args(4),","),$Get(args(5),"")),
        "creditcard":       ##class(Finance).CreditCard($Get(args(1),"")),
        "bitcoinaddress":   ##class(Finance).BitcoinAddress($Get(args(1),"24"),$Get(args(1),"34")),
        
        //Class: Game
        "mortalkombat":     ##class(Game).MortalKombat(),
        "streetfighter":    ##class(Game).StreetFighter(),
        "game.card":        ##class(Game).Card($Get(args(1),"0")),
        "card":             ##class(Game).Card($Get(args(1),"0")),
        
        //Class: Internet
        "username":         ##class(Internet).UserName($Get(args(1),""),$Get(args(2),"")),
        "email":            ##class(Internet).Email($Get(args(1),""),$Get(args(2),""),$Get(args(3),"")),
        "protocol":         ##class(Internet).Protocol(),
        "domainword":       ##class(Internet).DomainWord(),
        "domain":           ##class(Internet).DomainName(),
        "domainname":       ##class(Internet).DomainName(),
        "url":              ##class(Internet).Url(),
        "avatar":           ##class(Internet).Avatar($Get(args(1),"")),
        "slug":             ##class(Internet).Slug($Get(args(1),""),$Get(args(2),"")),
        
        //Class: Job
        "job.title":        ##class(Job).Title(),
        "job.skills":       ##class(Job).Skills(),
        "skill":            ##class(Job).Skills(),
        "job.field":        ##class(Job).Field(),
        
        //Class: Lorem
        "word":             ##class(Lorem).Word(),
        "words":            ##class(Lorem).Words($Get(args(1),"")),
        "sentence":         ##class(Lorem).Sentence("",$Get(args(1),3),$Get(args(2),10)),
        "sentences":        ##class(Lorem).Sentences($Get(args(1),""),$Get(args(2),"")),
        "paragraph":        ##class(Lorem).Paragraph($Get(args(1),"")),
        "p":                ##class(Lorem).Paragraph($Get(args(1),"")),
        "paragraphs":       ##class(Lorem).Paragraphs($Get(args(1),""),$Get(args(2),"")),
        "lines":            ##class(Lorem).Lines($Get(args(1),"")),
        "text":             ##class(Lorem).Text($Get(args(1),1)),
        "hipster":          ##class(Lorem).Hipster($Get(args(1),""),$Get(args(2),"")),
        
        //Class: Name
        "name":             ##class(Name).FullName($Get(args(1),"")),
        "fullname":         ##class(Name).FullName($Get(args(1),"")),
        "firstname":        ##class(Name).FirstName($Get(args(1),"")),
        "fname":            ##class(Name).FirstName($Get(args(1),"")),
        "lastname":         ##class(Name).LastName(),
        "lname":            ##class(Name).LastName(),
        "suffix":           ##class(Name).Suffix(),
        
        //Class: Person
        "cpf":              ##class(Person).cpf($Get(args(1),"1")),
        
        //Class: Phone
        "areacode":         ##class(Phone).AreaCode(),
        "phonenumber":      ##class(Phone).PhoneNumber($Get(args(1),"1")),
        "phone":            ##class(Phone).PhoneNumber($Get(args(1),"1")),
        "cellphone":        ##class(Phone).CellPhone($Get(args(1),"1")),
        
        //Class: Pokemon
        "pokemon":          ##class(Pokemon).Pokemon(),
        
        //Class: StarWars
        "starwars.character":##class(StarWars).Characters(),
        "starwars.droid":   ##class(StarWars).Droids(),
        "starwars.planet":  ##class(StarWars).Planets(),
        "starwars.quote":   ##class(StarWars).Quotes(),
        "starwars.specie":  ##class(StarWars).Species(),
        "starwars.vehicle": ##class(StarWars).Vehicles(),
        "starwars.wookieword":##class(StarWars).WookieWords(),
        "starwars.wookiesentence":##class(StarWars).WookieSentence($Get(args(1),"")),
        
        //Class: UFC
        "ufc.category":     ##class(UFC).Category(),
        "ufc.fighter":      ##class(UFC).Fighter($Get(args(1),""),$Get(args(2),""),$Get(args(3),"0")),
        "ufc.featherweight":##class(UFC).Featherweight($Get(args(1),"")),
        "ufc.middleweight": ##class(UFC).Middleweight($Get(args(1),"")),
        "ufc.welterweight": ##class(UFC).Welterweight($Get(args(1),"")),
        "ufc.lightweight":  ##class(UFC).Lightweight($Get(args(1),"")),
        "ufc.bantamweight": ##class(UFC).Bantamweight($Get(args(1),"")),
        "ufc.flyweight":    ##class(UFC).Flyweight($Get(args(1),"")),
        "ufc.heavyweight":  ##class(UFC).Heavyweight($Get(args(1),"")),
        "ufc.lightheavyweight":##class(UFC).LightHeavyweight($Get(args(1),"")),
        "ufc.nickname":     ##class(UFC).Nickname($Get(args(1),"")),    
        
        :$Random(99) + 1)
}

}

