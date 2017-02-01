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
	
	Quit pSymbol _ value _ pSeparator _ pDec
}

ClassMethod BitcoinAddress(pMin As %Integer = 27, pMax As %Integer = 34) As %String
{
	Set length = "", bitcoinAddress = ""
	While ('..In(length, pMin, pMax)) {
		Set length = $Random(35)
	}
	
	For k=1:1:length{
		Set element = 0, bFlag = $$$NO
		
		While bFlag = $$$NO {
			Set element = $Random(123),
				bFlag = ((..In(element,48,57))||(..In(element,65,90))||(..In(element,97,122)))
			
		}
		Set bitcoinAddress = bitcoinAddress _ $Char(element)
	}

	Quit bitcoinAddress
}

ClassMethod In(pValue, pMin As %Integer, pMax As %Integer) As %Boolean [ Private ]
{
	Quit ((pValue>=pMin)&&(pValue<=pMax))
}

}

