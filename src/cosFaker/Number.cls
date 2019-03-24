Class cosFaker.Number Extends cosFaker.lib.core
{

ClassMethod Numerify(pMask As %String = "##") As %Status
{
	Quit ..MaskNumber(pMask)
}

ClassMethod Number(pDigits As %Integer = 10)
{
	Set $Piece(number, "#", pDigits + 1) = ""
	Quit ..MaskNumber(number)
}

ClassMethod LeadingZeroNumber(pDigits As %Integer = 10) As %String
{
	Set number = "0",
		$Piece(number, "#", pDigits) = ""
	Quit ..MaskNumber(number)
}

}
