Class cosFaker.Finance
{

ClassMethod Amount(pMin As %Integer = 0, pMax As %Integer = 10000, pDec As %Integer = 2, pSeparator = ",", pSymbol As %String = "") As %String
{
	Set value = pMin-10, dec = ""
	While ('..In(value, pMin, pMax)) {
		Set value = $Random(pMax + 1)
	}
	
	For k=1:1:pDec {
		Set dec = dec _ $Random(10)
	}
	
	Quit pSymbol _ value _ pSeparator _ dec
}

ClassMethod BitcoinAddress(pMin As %Integer = 24, pMax As %Integer = 34) As %String
{
	Set:pMin<24 pMin = 24
	Set:pMax>34 pMax = 34
	Set length = "", bitcoinAddress = "", 
		digits58 = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
	
	While ('..In(length, pMin, pMax)) {
		Set length = $Random(36)
	}
	
	For k=1:1:27{
		Set i = $Random($Length(digits58)) + 1
		Set bitcoinAddress = bitcoinAddress _ $Extract(digits58,i)
	}

	Quit 1 _ bitcoinAddress
}

ClassMethod In(pValue, pMin As %Integer, pMax As %Integer) As %Boolean [ Private ]
{
	Quit ((pValue>=pMin)&&(pValue<=pMax))
}

}

