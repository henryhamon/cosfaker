/// <h1>cosFaker SQL</h1><br/> <span style="font-size:10px;">Author: <b>Andrei Luiz Nenevê - <a href="mailto:alneneve@gmail.com" target="_blank">Email</a> - <a href="https://github.com/AndreiLN" target="_blank">Github</a></b></span> <p><b>This class will generate random data according the options in cosFaker for any table. Examples are shown in method's description.</b></p><br/><br/> <h3>Valid Types:</h3> <div style="padding-left:25px;border: 1px dashed #ddd;background-color:#eee;"><b>[]</b> = Parameters (Aways optional)<b></b>, <b style="color:darkgreen;">{}</b> = Default, <b style="color:darkblue;">()</b> = List of Valid Values<b></b>, <b style="color:darkred;">' '</b> = Must pass the string in single quotation marks<br/><br/><b>Address:</b><ul><li>streetprefix</li><li>street || streetname || street-name</li><li>latitude</li><li>longitude</li><li>capital</li><li>state [<b>full-name</b><span style="color:darkgreen;">{0}</span>]</li><li>statefull</li><li>city [<b>state</b>]</li><li>country [<b>abbreviated</b>]</li><li>postcode</li><li>secondary-address || secondaryaddress</li><li>building-number || buildingnumber</li></ul><b>App:</b><ul><li>function || functionname || function-name [<b>group</b><span style="color:darkblue;">(SQL,IF,FUN)</span>,<b>separator</b>]</li><li>app.action [<b>group</b><span style="color:darkblue;">(SQL,IF,FUN)</span>]</li><li>app.type </li></ul><b>Coffee:</b><ul><li>coffee.blendname || coffee.blend</li><li>coffee.variety</li><li>coffee.notes</li><li>coffee.origin</li></ul><b>Commerce:</b><ul><li>price [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{1000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>symbol</b>]</li><li>cnpj [<b>pretty</b><span style="color:darkgreen;">{1}</span>]</li><li>commerce.color</li><li>department</li><li>promotioncode || promotion-code</li><li>productname || product-name</li></ul><b>Company:</b><ul><li>profession</li><li>industry</li><li>company.name</li></ul><b>Dates:</b><ul><li>date [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li><li>dates.forward || date.forward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li><li>dates.backward || date.backward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li></ul><b>DragonBall:</b><ul><li>dragonball.character</li></ul><b>File:</b><ul><li>filename [<b>directory</b>,<b>name</b>,<b>extension</b>,<b>separator</b><span style="color:darkgreen;">{/}</span>]</li><li>file.extension</li><li>file.mimetype</li></ul><b>Finance:</b><ul><li>amount [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{10000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>separator</b><span style="color:darkgreen;">{,}</span>,<b>symbol</b>]</li><li>creditcard || credit-card [<b>type</b><span style="color:darkblue;">(visa,mastercard,american_express)</span>]</li><li>bitcoinaddress || bitcoin-address [<b>min</b><span style="color:darkgreen;">{24}</span>,<b>max</b><span style="color:darkgreen;">{34}</span>]</li></ul><b>Game:</b><ul><li>game.card || card [<b>abbreviated</b><span style="color:darkgreen;">{0}</span>]</li><li>mortalkombat</li><li>streetfighter</li></ul><b>Internet:</b><ul><li>username [<b>first-name</b>,<b>last-name</b>]</li><li>email [<b>first-name</b>,<b>last-name</b>,<b>provider</b>]</li><li>protocol</li><li>domainword</li><li>domain || domainname || domain-name</li><li>avatar [<b>size</b>]</li><li>url</li><li>slug [<b style="color:darkred">'words'</b>,<b>glue</b>]</li><li>ipv4</li><li>ipv6</li><li>mac</li></ul><b>Job:</b><ul><li>job.title</li><li>job.skills || skill</li><li>job.field</li></ul><b>Lorem:</b><ul><li>word</li><li>words [<b>amount</b>]</li><li>sentence [<b>min-amount</b><span style="color:darkgreen;">{3}</span>,<b>max-amount</b><span style="color:darkgreen;">{10}</span>]</li><li>sentences [<b>sentence-amount</b>,<b>separator</b>]</li><li>paragraph || p [<b>sentence-amount</b>]</li><li>paragraphs [<b>paragraph-amount</b>,<b>separator</b>]</li><li>lines [<b>line-amount</b>]</li><li>text [<b>amount</b>]</li><li>hipster [<b>paragraph-amount</b>,<b>separator</b>]</li></ul><b>Name:</b><ul><li>name || fullname || full-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>firstname || fname || first-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>lastname || lname || last-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>suffix</li></ul><b>Person:</b><ul><li>cpf [<b>Pretty</b><span style="color:darkgreen;">{1}</span>]</li></ul><b>Phone:</b><ul><li>areacode || area-code</li><li>phonenumber || phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li><li>cellphone || cell-phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li></ul><b>Pokemon:</b><ul><li>pokemon</li></ul><b>StarWars:</b><ul><li>starwars.character</li><li>starwars.droid</li><li>starwars.planet</li><li>starwars.quote</li><li>starwars.specie</li><li>starwars.vehicle</li><li>starwars.wookieword</li><li>starwars.wookiesentence [<b>amount</b>]</li></ul><b>UFC:</b><ul><li>ufc.category</li><li>ufc.fighter [<b>category</b>,<b>country</b>,<b>with-country</b><span style="color:darkgreen;">{0}</span>]</li><li>ufc.featherweight [<b>country</b>]</li><li>ufc.middleweight [<b>country</b>]</li><li>ufc.welterweight [<b>country</b>]</li><li>ufc.lightweight [<b>country</b>]</li><li>ufc.bantamweight [<b>country</b>]</li><li>ufc.flyweight [<b>country</b>]</li><li>ufc.heavyweight [<b>country</b>]</li><li>ufc.lightheavyweight [<b>country</b>]</li><li>ufc.nickname [<b style="color:darkred">'fighter-name'</b>]</li></ul><br><ul><li>Any other will be an random integer between 1 and 99</li></ul></div><br/><h3>Examples:</h3> <example> Do ##class(cosFaker.SQL).Insert("Sample_Data.Clients","City,Name,NickName","city SC,name 2,ufc.nickname 'Anderson Silva'",1) ;INSERT INTO Sample_Data.Clients (City,Name,NickName) VALUES ('Trombudo Central','Leandro Mendes','The Spider') </example> <example> Do ##class(cosFaker.SQL).Insert("Sample_Data.Clients","City,Name,Salary","city SC,name 2,price 1000 2000 2 R$",2) ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Celso Ramos','Luiggi Dias Nunes Saraiva','R$1654.30') ;INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Nova Veneza','Fabiano da Costa','R$1255.13') </example>
Class cosFaker.SQL Extends cosFaker.lib.core
{

/// Version of cosFaker SQL
Parameter Version As %String = "BETA 0.0.1";

/// Last time that this class was updated
Parameter LastUpdate As %String = "2017-05-11 14:03:18";

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
///     "city SC,name 2,street",
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
///         "city SC,name 2,street",
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

}

