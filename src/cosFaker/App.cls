Class cosFaker.App Extends %RegisteredObject
{

ClassMethod FunctionName(pGroup = "", pSeparator As %String = "") As %String
{
	S:pSeparator="" pSeparator = " "
	S action = ##class(cosFaker.Data.PtBr).AppAction(pGroup)
	S function = ##class(cosFaker.Data.PtBr).AppType()
	Q action _ pSeparator _ function
}

}

