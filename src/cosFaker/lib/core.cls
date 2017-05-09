Class cosFaker.lib.core
{

/// Portuguese (Brazil)
Parameter PtBr = "PtBr";

/// English (United States)
Parameter EnUs = "EnUs";

/// Russian
Parameter Ru = "Ru";

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

ClassMethod GetLang() As %String [ Private ]
{
	Quit:..GetLanguage()="pt-br" ..#PtBr
	//Set:..GetLanguage()="ru" tLang = ..#Ru
	Quit ..#EnUs ;Default
}

ClassMethod Sample(pList) As %String [ Private ]
{
	Quit:$ListLength(pList)>0 $List(pList, $Random($ListLength(pList)) + 1)
	Quit ""
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

ClassMethod GetFile(pDirFname As %String, pSearch As %String = "") As %String [ Private ]
{
	Set file = ##class(%File).%New(..GetPath()_"cosFaker\lang"_pDirFname)
	Do file.Open("R")
	Set Ret = ""
	While 'file.AtEnd{
		Set val = file.Read()
		If ((pSearch'="")&&($Find(val,pSearch_"={")>0)){
			Set Ret = $Piece($Piece(val,"{",2),"}",1)
			Quit
		}
		Set:pSearch="" Ret = Ret_val
	}
	Do file.Close()
	Quit Ret
}

ClassMethod SampleFromFile(pName As %String, pSearch As %String = "", pLang As %String = "") As %String [ Private ]
{
	Set:pLang="" pLang = ..GetLang()
	Quit ..Sample($ListFromString(..GetFile("\"_pLang_"\"_pName_".fkr",pSearch),","))
}

ClassMethod GetPath() As %String [ Private ]
{
	Set OldNS = $Namespace
	ZN "%SYS"
	Set app = ##class(Security.Applications).%OpenId($System.CSP.GetDefaultApp(OldNS))
	Set path = app.Path
	ZN OldNS
	Quit path
}

}

