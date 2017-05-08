Class cosFaker.Address Extends (cosFaker.lib.braziliancities, cosFaker.lib.americancities)
{

ClassMethod StreetSuffix() As %String
{
	Quit $List($ListFromString("Doutor,,Marechal,Padre,,Almirante,General,Monsenhor,,Conselheiro",","),$Random(10)+1)
}

ClassMethod StreetPrefix() As %String
{
	Quit $List($ListFromString("Rua,Avenida,Travessa,Ponte,Alameda,Marginal,Viela,Rodovia",","),$Random(8)+1)
}

ClassMethod StreetName() As %String
{
	S suffix = ..StreetSuffix()
	S:suffix'="" suffix = suffix _ " " 
	Q ..StreetPrefix() _ " " _ suffix _  ##class(cosFaker.Name).FullName(2)
}

ClassMethod Latitude()
{
	Quit ($Random(180 * 10000) / 10000.0) - 90.0
}

ClassMethod Longitude()
{
	Quit ($Random(360 * 10000) / 10000.0 ) - 180.0
}

/// Generates an random Capital<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod Capital(pLocation As %String = "") As %String
{
	Set:pLocation="" pLocation = $Case(..GetLanguage(),"pt-br":"BR",:"US")
	Quit:pLocation="BR" ..BrazilianCapital()
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) ..AmericanCapital()
	Quit ""
}

ClassMethod BrazilianCapital() As %String [ Private ]
{
	Set Capitals = $ListBuild("Rio Branco","Maceió","Macapá","Manaus","Salvador","Fortaleza","Brasília","Vitória","Goiânia","São Luís","Cuiabá","Campo Grande","Belo Horizonte","Belém","João Pessoa","Curitiba","Recife","Teresina","Rio de Janeiro","Natal","Porto Alegre","Porto Velho","Boa Vista","Florianópolis","São Paulo","Aracaju","Palmas")
	Quit ..Sample(Capitals)
}

ClassMethod AmericanCapital() As %String [ Private ]
{
	Set Capitals = $ListBuild("Montgomery","Juneau","Phoenix","Little Rock","Sacramento","Denver","Hartford","Dover","Tallahassee","Atlanta","Honolulu","Boise","Springfield","Indianapolis","Des Moines","Topeka","Frankfort","Baton Rouge","Augusta","Annapolis","Boston","Lansing","Saint Paul","Jackson","Jefferson City","Helena","Lincoln","Carson City","Concord","Trenton","Santa Fe","Albany","Raleigh","Bismarck","Columbus","Oklahoma City","Salem","Harrisburg","Providence","Columbia","Pierre","Nashville","Austin","Salt Lake City","Montpelier","Richmond","Olympia","Charleston","Madison","Cheyenne")
	Quit ..Sample(Capitals)
}

/// Generates an random State<br/>
/// <b>pFullName</b> = Default is abreviated name of the state<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod State(pFullName As %Boolean = 0, pLocation As %String = "") As %String
{
	Set:pLocation="" pLocation = $Case(..GetLanguage(),"pt-br":"BR",:"US")
	Quit:pLocation="BR" ..BrazilianState(pFullName)
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) ..AmericanState(pFullName)
	Quit ""
}

ClassMethod BrazilianState(pFullName As %Boolean = 0) As %String [ Private ]
{
	Set lFullName = $ListBuild("Acre","Alagoas","Amapá","Amazonas","Bahia","Ceará","Distrito Federal","Espírito Santo","Goiás","Maranhão","Mato Grosso","Mato Grosso do Sul","Minas Gerais","Pará","Paraíba","Paraná","Pernambuco","Piauí","Rio de Janeiro","Rio Grande do Norte","Rio Grande do Sul","Rondônia","Roraima","Santa Catarina","São Paulo","Sergipe","Tocantins")
	Set lShortName = $ListBuild("AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO")
	Quit:pFullName ..Sample(lFullName)
	Quit ..Sample(lShortName)
}

ClassMethod AmericanState(pFullName As %Boolean = 0) As %String [ Private ]
{
	Set lFullName = $ListBuild("Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming")
	Set lShortName = $ListBuild("AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
	Quit:pFullName ..Sample(lFullName)
	Quit ..Sample(lShortName)
}

/// Generates an random City<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod City(pLocation As %String = "", pState As %String = "") As %String
{
	Set:pLocation="" pLocation = $Case(..GetLanguage(),"pt-br":"BR",:"US")
	Set:((pState="")&&(pLocation="BR")) pState = ..BrazilianState()
	Set:((pState="")&&((pLocation="USA")||(pLocation="US")||(pLocation="EUA"))) pState = ..AmericanState()
	Quit:pLocation="BR" ..BrazilianCity(pState)
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) ..AmericanCity(pState)
	Quit ""
}

ClassMethod Country(pAbrev As %Boolean = 0)
{
	Quit:..GetLanguage()="pt-br" ##class(cosFaker.Data.PtBr).Country(pAbrev)
	Quit ##class(cosFaker.Data.EnUs).Country(pAbrev)
}

}

