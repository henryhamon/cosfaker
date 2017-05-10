Class cosFaker.App Extends cosFaker.lib.core
{

ClassMethod FunctionName(pGroup = "", pSeparator As %String = "") As %String
{
	Set:pSeparator="" pSeparator = " "
	Set action = ..AppAction()
	Set function = ..AppType()
	Quit action _ pSeparator _ function
}

ClassMethod AppAction(pGroup = "") As %String
{
	Set:pGroup="" pGroup = $ListGet($ListFromString("SQL,IF,FUN",","),$Random(3)+1)
	Quit:pGroup="SQL" ..SampleFromFile("app","action_sql")
	Quit:pGroup="IF" ..SampleFromFile("app","action_if")
	Quit:pGroup="FUN" ..SampleFromFile("app","action_fun")
	Quit ""
}

ClassMethod AppType() As %String
{
	Quit ..SampleFromFile("app","type")
}

}

