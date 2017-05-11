/// <h1>cosFaker JSON</h1><br/> <span style="font-size:10px;">Author: <b>Andrei Luiz Nenevê - <a href="mailto:alneneve@gmail.com" target="_blank">Email</a> - <a href="https://github.com/AndreiLN" target="_blank">Github</a></b></span> <p><b>This class will generate random data according the options in cosFaker for any json string, it can return an JSON String or Object. Examples are shown in method's description.</b></p><br/><br/> <h3>Valid Types:</h3> <div style="padding-left:25px;border: 1px dashed #ddd;background-color:#eee;"> <br/><b>*** You can aways pass a number before the type to generate an array of the desired type</b><br/><br/><b>[]</b> = Parameters (Aways optional)<b></b>, <b style="color:darkgreen;">{}</b> = Default, <b style="color:darkblue;">()</b> = List of Valid Values<b></b>, <b style="color:darkred;">" "</b> = Must pass the string in double quotation marks<br/><br/><b>Address:</b><ul><li>streetprefix</li><li>street || streetname || street-name</li><li>latitude</li><li>longitude</li><li>capital</li><li>state [<b>full-name</b><span style="color:darkgreen;">{0}</span>]</li><li>statefull</li><li>city [<b>state</b>]</li><li>country [<b>abbreviated</b>]</li><li>postcode</li><li>secondary-address || secondaryaddress</li><li>building-number || buildingnumber</li></ul><b>App:</b><ul><li>function || functionname || function-name [<b>group</b><span style="color:darkblue;">(SQL,IF,FUN)</span>,<b>separator</b>]</li><li>app.action [<b>group</b><span style="color:darkblue;">(SQL,IF,FUN)</span>]</li><li>app.type </li></ul><b>Coffee:</b><ul><li>coffee.blendname || coffee.blend</li><li>coffee.variety</li><li>coffee.notes</li><li>coffee.origin</li></ul><b>Commerce:</b><ul><li>price [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{1000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>symbol</b>]</li><li>cnpj [<b>pretty</b><span style="color:darkgreen;">{1}</span>]</li></ul><b>Company:</b><ul><li>profession</li><li>industry</li><li>company.name</li></ul><b>Dates:</b><ul><li>date [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li><li>dates.forward || date.forward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li><li>dates.backward || date.backward [<b>days</b><span style="color:darkgreen;">{365}</span>,<b>format</b><span style="color:darkgreen;">{3}</span>]</li></ul><b>DragonBall:</b><ul><li>dragonball.character</li></ul><b>File:</b><ul><li>filename [<b>directory</b>,<b>name</b>,<b>extension</b>,<b>separator</b><span style="color:darkgreen;">{/}</span>]</li><li>file.extension</li><li>file.mimetype</li></ul><b>Finance:</b><ul><li>amount [<b>min</b><span style="color:darkgreen;">{0}</span>,<b>max</b><span style="color:darkgreen;">{10000}</span>,<b>decimal-places</b><span style="color:darkgreen;">{2}</span>,<b>separator</b><span style="color:darkgreen;">{,}</span>,<b>symbol</b>]</li><li>creditcard || credit-card [<b>type</b><span style="color:darkblue;">(visa,mastercard,american_express)</span>]</li><li>bitcoinaddress || bitcoin-address [<b>min</b><span style="color:darkgreen;">{24}</span>,<b>max</b><span style="color:darkgreen;">{34}</span>]</li></ul><b>Game:</b><ul><li>game.card || card [<b>abbreviated</b><span style="color:darkgreen;">{0}</span>]</li><li>mortalkombat</li><li>streetfighter</li></ul><b>Internet:</b><ul><li>username [<b>first-name</b>,<b>last-name</b>]</li><li>email [<b>first-name</b>,<b>last-name</b>,<b>provider</b>]</li><li>protocol</li><li>domainword</li><li>domain || domainname || domain-name</li><li>avatar [<b>size</b>]</li><li>url</li><li>slug [<b style="color:darkred">'words'</b>,<b>glue</b>]</li><li>ipv4</li><li>ipv6</li><li>mac</li></ul><b>Job:</b><ul><li>job.title</li><li>job.skills || skill</li><li>job.field</li></ul><b>Lorem:</b><ul><li>word</li><li>words [<b>amount</b>]</li><li>sentence [<b>min-amount</b><span style="color:darkgreen;">{3}</span>,<b>max-amount</b><span style="color:darkgreen;">{10}</span>]</li><li>sentences [<b>sentence-amount</b>,<b>separator</b>]</li><li>paragraph || p [<b>sentence-amount</b>]</li><li>paragraphs [<b>paragraph-amount</b>,<b>separator</b>]</li><li>lines [<b>line-amount</b>]</li><li>text [<b>amount</b>]</li><li>hipster [<b>paragraph-amount</b>,<b>separator</b>]</li></ul><b>Name:</b><ul><li>name || fullname || full-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>firstname || fname || first-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>lastname || lname || last-name [<b>gender</b><span style="color:darkblue;">(1="female",2="male")]</li><li>suffix</li></ul><b>Person:</b><ul><li>cpf [<b>Pretty</b><span style="color:darkgreen;">{1}</span>]</li></ul><b>Phone:</b><ul><li>areacode || area-code</li><li>phonenumber || phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li><li>cellphone || cell-phone [<b>area-code</b><span style="color:darkgreen;">{1}</span>]</li></ul><b>Pokemon:</b><ul><li>pokemon</li></ul><b>StarWars:</b><ul><li>starwars.character</li><li>starwars.droid</li><li>starwars.planet</li><li>starwars.quote</li><li>starwars.specie</li><li>starwars.vehicle</li><li>starwars.wookieword</li><li>starwars.wookiesentence [<b>amount</b>]</li></ul><b>UFC:</b><ul><li>ufc.category</li><li>ufc.fighter [<b>category</b>,<b>country</b>,<b>with-country</b><span style="color:darkgreen;">{0}</span>]</li><li>ufc.featherweight [<b>country</b>]</li><li>ufc.middleweight [<b>country</b>]</li><li>ufc.welterweight [<b>country</b>]</li><li>ufc.lightweight [<b>country</b>]</li><li>ufc.bantamweight [<b>country</b>]</li><li>ufc.flyweight [<b>country</b>]</li><li>ufc.heavyweight [<b>country</b>]</li><li>ufc.lightheavyweight [<b>country</b>]</li><li>ufc.nickname [<b style="color:darkred">'fighter-name'</b>]</li></ul><br><ul><li>Any other will be an random integer between 1 and 99</li></ul></div>
Class cosFaker.JSON Extends cosFaker.lib.core
{

/// Version of cosFaker JSON
Parameter Version As %String = "BETA 0.0.1";

/// Last time that this class was updated
Parameter LastUpdate As %String = "2017-05-11 09:11:13";

/// Creates random data in JSON
/// Parameters:<br/>
/// <b>pJson</b>: JSON string to create data <br/>
/// Output <b>tSC</b>: Status 
/// <br/>Examples:<br/>
/// <example>
/// Write ##class(cosFaker.JSON).GetDataJSONFromJSON("{Nome:'name 2',Cidade:'city SC',CPF:'cpf 1',Description:'slug ""person sample example"" ;'}")            
/// ;{
/// ;   "CPF":"661.254.048-62",
/// ;   "Cidade":"Brunópolis",
/// ;   "Nome":"Jonathan Ribeiro Ribeiro",
/// ;   "Description":"person;sample;example"
/// ;}
/// </example>
/// <example>
/// Write ##class(cosFaker.JSON).GetDataJSONFromJSON("{dates:'5 date'}")            
/// ;{"dates":["2017-02-19","2017-12-21","2017-07-02","2016-05-25","2016-08-14"]}
/// </example>
/// <example>
/// ;Suppose you want a person with name, street, phone and his 3 preferred Pokemons
/// Write ##class(cosFaker.JSON).GetDataJSONFromJSON("{person:['name','street','phone','3 pokemon']}")            
/// ;{"person":
/// ;          [
/// ;             "Yango Nogueira",
/// ;             "Viela General Sirineu Nogueira",
/// ;             "(44) 0968-2926",
/// ;             ["Bayleef","Haunter","Golurk"]
/// ;          ]
/// ;}
/// </example>
ClassMethod GetDataJSONFromJSON(pJson As %String = "", Output tSC As %Status) As %String
{
    #dim obj As %ZEN.proxyObject
    Set tSC = $$$OK, tReturnStr = ""
    Try {
        $$$THROWONERROR(tSC, ..Validate(pJson,"Must pass JSON in string format!"))
        Set provider = ##class(%ZEN.Auxiliary.jsonProvider).%New()
        Do provider.%ConvertJSONToObject(pJson,,.obj)
        If $IsObject(obj){
            Do obj.%CopyToArray(.tProperties)
            Do ##class(%ZEN.Auxiliary.jsonProvider).%WriteJSONStreamFromObject(.pJSON,..FillObject(.tProperties,.tSC))
            Throw:$$$ISERR(tSC)
            While 'pJSON.AtEnd {
                Set tReturnStr = tReturnStr_pJSON.Read()
            }
        } Else {
            Set tSC = $$$ERROR(5002,"Invalid JSON")
        }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tReturnStr
}

/// Creates random data in Object
/// Parameters:<br/>
/// <b>pJson</b>: JSON string to create data <br/>
/// Output <b>tSC</b>: Status 
/// <br/>Examples:<br/>
/// <example>
/// Write ##class(cosFaker.JSON).GetDataOBJFromJSON("{name:'name 2',birth:'date',profession:'profession'}").name            
/// ;Flávio Silveira
/// </example>
/// <example>
/// Write ##class(cosFaker.JSON).GetDataOBJFromJSON("{name:'name 2',birth:'date',profession:'profession'}").profession            
/// ;Intérprete
/// </example>
/// <example>
/// ;Suppose you want a person with name, street, phone and his 3 preferred Pokemons
/// Set person = ##class(cosFaker.JSON).GetDataOBJFromJSON("{name:'name 2',birth:'date',profession:'profession',pokemons:'3 pokemon'}",.tSC)
/// Set listOfPokemons = person.pokemons          
/// Write listOfPokemons.GetAt(1)
/// ;Diancie
/// Write listOfPokemons.Count()
/// ;3
/// </example>
ClassMethod GetDataOBJFromJSON(pJson As %String = "", Output tSC As %Status)
{
    #dim obj As %ZEN.proxyObject
    Set tSC = $$$OK, tReturnObj = ""
    Try {
        $$$THROWONERROR(tSC, ..Validate(pJson,"Must pass JSON in string format!"))
        Set provider = ##class(%ZEN.Auxiliary.jsonProvider).%New()
        Do provider.%ConvertJSONToObject(pJson,,.obj)
        If $IsObject(obj){
            Do obj.%CopyToArray(.tProperties)
            Set tReturnObj = ..FillObject(.tProperties,.tSC)
        } Else {
            Set tSC = $$$ERROR(5002,"Invalid JSON")
        }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tReturnObj
}

ClassMethod FillObject(ByRef pProperties, Output tSC) [ Private ]
{
    Set tSC = $$$OK
    Try {
    Set obj = ##class(%ZEN.proxyObject).%New()
    Set tActualProp = $Order(pProperties(""))
    While tActualProp'=""{
        If $IsObject(pProperties(tActualProp)){
            Set Array = pProperties(tActualProp)
            $$$THROWONERROR(tSC, ..ProcessList(Array,.value))
        } Else {
            $$$THROWONERROR(tSC, ..CreateValues(pProperties(tActualProp), .value))
        }
        Set pProperties(tActualProp) = value
        Set tActualProp = $Order(pProperties(tActualProp))
    }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Do obj.%CopyFromArray(.pProperties)
    Quit obj
}

ClassMethod ProcessList(pProperties As %ListOfDataTypes, Output pReturn) As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        Set:pProperties.Count()>1 pReturn = ##class(%ListOfDataTypes).%New()
        For idx=1:1:pProperties.Count(){
            $$$THROWONERROR(tSC, ..CreateValues(pProperties.GetAt(idx),.val))
            Set:pProperties.Count()=1 pReturn = val
            Do:pProperties.Count()>1 pReturn.Insert(val)
        }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod CreateValues(pProperty As %String, Output tReturn) As %Status [ Private ]
{
    Set tSC = $$$OK
    Try {
        Set tReturn = ##class(%ListOfDataTypes).%New()
        Set qtd = ..VerifyAmount(.pProperty)
        $$$THROWONERROR(tSC, ..GetInfo(pProperty,.type,.args,""""))
        For i=1:1:qtd{
            Set:qtd=1 tReturn = ..DefineValue(type,args...)
            Do:qtd>1 tReturn.Insert(..DefineValue(type,args...))
        }
    } Catch tException {
        Set:$$$ISOK(tSC) tSC = tException.AsStatus()
    }
    Quit tSC
}

ClassMethod VerifyAmount(ByRef pProperty As %String) As %Integer [ Private ]
{
    Set tList = $ListFromString(pProperty," ")
    Set tAmount = $List(tList,1)
    If tAmount = +tAmount { //If it has some amount defined for generate
        Set $List(tList,1) = ""
        Set pProperty = $Extract($ListToString(tList," "),2,*)
    } Else {
        Set tAmount = 1
    }
    Quit tAmount
}

}

