Class cosFaker.lib.core
{

Parameter PtBrDataClass = "cosFaker.Data.PtBr";

Parameter EnUsDataClass = "cosFaker.Data.EnUs";

/// "cs" = "Czech"<br/>
/// "de" = "German"<br/>
/// "en" = "English"<br/>
/// "en-us" = "English (United States)"<br/>
/// "es" = "Spanish"<br/>
/// "fr" = "French"<br/>
/// "it" = "Italian"<br/>
/// "ja" = "Japanese"<br/>
/// "ko" = "Korean"<br/>
/// "nl" = "Dutch"<br/>
/// "pt" = "Portuguese"<br/>
/// "pt-br" = "Portuguese (Brazil)"<br/>
/// "ru" = "Russian"<br/>
/// "uk" = "Ukrainian"<br/>
/// "zh" = "Chinese"<br/>
/// "zh-cn" = "Chinese (PRC)"<br/>
/// "zh-tw" = "Chinese (Taiwan)"
ClassMethod GetLanguage() As %String [ Private ]
{
	Quit $ZConvert($List(##class(%SYS.NLS.Locale).GetLanguage(),1),"l")
}

ClassMethod GetClass() As %String [ Private ]
{
	Set tClass = ..#EnUsDataClass ;Default
	Set:..GetLanguage()="pt-br" tClass = ..#PtBrDataClass
	Quit tClass
}

ClassMethod Sample(pList) As %String [ Private ]
{
	Quit $List(pList, $Random($ListLength(pList)) + 1)
}

ClassMethod MaskNumber(pTemplate As %String, pMin As %Integer = "", pMax As %Integer = "") As %String [ Private ]
{
	Set pos = $Find(pTemplate,"#",0)
	
	While pos'=$$$NO {
		
		//If (pMin="" || pMax="") {
		Set value = $Random(10)
		/*
		} Else {
			Set value = ..Range(pMin, pMax)
		}
		*/
		
		Set pTemplate = $Extract(pTemplate,0,pos-2)_value_$Extract(pTemplate,pos,*),
			pos = $Find(pTemplate,"#",0)
	}
	Quit pTemplate
}

ClassMethod Range(pMin As %Integer = 0, pMax As %Integer = 10000) As %Integer [ Private ]
{
	Set value = pMin-10, dec = ""
	While ('..In(value, pMin, pMax)) {
		Set value = $Random(pMax + 1)
	}
	
	Quit value
}

ClassMethod In(pValue, pMin As %Integer, pMax As %Integer) As %Boolean [ Private ]
{
	Quit ((pValue>=pMin)&&(pValue<=pMax))
}

}

