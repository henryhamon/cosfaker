Class cosFaker.Address Extends cosFaker.lib.core
{

ClassMethod StreetSuffix() As %String
{
	Quit $ClassMethod(..GetClass(),"StreetSuffix")
}

ClassMethod StreetPrefix() As %String
{
	Quit $ClassMethod(..GetClass(),"StreetPrefix")
}

ClassMethod StreetName() As %String
{
	Set suffix = ..StreetSuffix()
	Set:suffix'="" suffix = suffix _ " " 
	Quit ..StreetPrefix() _ " " _ suffix _  ##class(cosFaker.Name).FullName(2)
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
	Quit:pLocation="BR" $ClassMethod(..#PtBrDataClass,"Capital")
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) $ClassMethod(..#EnUsDataClass,"Capital")
	Quit $ClassMethod(..GetClass(),"Capital")
}

/// Generates an random State<br/>
/// <b>pFullName</b> = Default is abreviated name of the state<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod State(pFullName As %Boolean = 0, pLocation As %String = "") As %String
{
	Quit:pLocation="BR" $ClassMethod(..#PtBrDataClass,"State",pFullName)
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) $ClassMethod(..#EnUsDataClass,"State",pFullName)
	Quit $ClassMethod(..GetClass(),"State",pFullName)
}

/// Generates an random City<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod City(pLocation As %String = "", pState As %String = "") As %String
{
	Set:(pState="") pState = ..State(0,pLocation)
	Quit:pLocation="BR" $ClassMethod(..#PtBrDataClass,"City",pState)
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) $ClassMethod(..#EnUsDataClass,"City",pState)
	Quit $ClassMethod(..GetClass(),"City",pState)
}

ClassMethod Country(pAbrev As %Boolean = 0)
{
	Quit $ClassMethod(..GetClass(),"Country",pAbrev)
}

}

