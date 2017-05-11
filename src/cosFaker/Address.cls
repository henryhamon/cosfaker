Class cosFaker.Address Extends cosFaker.lib.core
{

ClassMethod StreetSuffix() As %String
{
	Quit ..SampleFromFile("street_suffix")
}

ClassMethod StreetPrefix() As %String
{
	Quit ..SampleFromFile("street_prefix")
}

ClassMethod PostCode() As %String
{
	Quit ..MaskNumber(..SampleFromFile("postcode"))
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

ClassMethod Capital(pLocation As %String = "") As %String
{
	Quit ..SampleFromFile("capital")
}

ClassMethod State(pFullName As %Boolean = 0) As %String
{
	Quit ..SampleFromFile("state_"_$Case(pFullName,0:"abbr",1:"full"))
}

ClassMethod City(pState As %String = "") As %String
{
	Set:pState="" pState = ..SampleFromFile("state_abbr")
	Quit ..SampleFromFile("city",pState)
}

ClassMethod Country(pAbrev As %Boolean = 0)
{
	Quit ..SampleFromFile("country_"_$Case(pAbrev,0:"full",1:"abbr"))
}

ClassMethod SecondaryAddress()
{
	Quit ..MaskNumber(..SampleFromFile("secondary_address"))
}

ClassMethod BuildingNumber()
{
	Quit ..MaskNumber(..SampleFromFile("number"))
}

}

