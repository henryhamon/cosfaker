Class cosFaker.App Extends cosFaker.lib.core
{

ClassMethod FunctionName(pGroup = "", pSeparator As %String = "") As %String
{
	Set:pSeparator="" pSeparator = " "
	Set action = $ClassMethod(..GetClass(),"AppAction",pGroup)
	Set function = $ClassMethod(..GetClass(),"AppType")
	Quit action _ pSeparator _ function
}

}

