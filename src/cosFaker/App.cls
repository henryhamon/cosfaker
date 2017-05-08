Class cosFaker.App Extends cosFaker.lib.core
{

ClassMethod FunctionName(pGroup = "", pSeparator As %String = "") As %String
{
	Set:pSeparator="" pSeparator = " "
	If ..GetLanguage() = "pr-br"{
		Set action = ##class(cosFaker.Data.PtBr).AppAction(pGroup)
		Set function = ##class(cosFaker.Data.PtBr).AppType()
	} Else {
		Set action = ##class(cosFaker.Data.EnUs).AppAction(pGroup)
		Set function = ##class(cosFaker.Data.EnUs).AppType()
	}
	Quit action _ pSeparator _ function
}

}

