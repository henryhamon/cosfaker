Class cosFaker.Commerce
{

ClassMethod Price(pMin As %Integer = 0, pMax As %Integer = 1000, pDec As %Integer = 2, pSymbol As %String = "")
{
	Set bOk = $$$NO, $Piece(dec,"9",pDec+1)="", $Piece(tmp,"0",pDec+1)=""
	
	While bOk = $$$NO {
		Set randdec = $Random(dec)
		Set rand = $Random(pMax ) _ "." _ randdec _ $Extract(tmp, 0, $Length(tmp)-$Length(randdec))
		Set:((rand >= pMin)&&(rand <= pMax)) bOk = $$$YES
	}
	
	Quit pSymbol _ rand
}

ClassMethod CNPJ(pPretty As %Boolean = 1) As %String
{
}

}

