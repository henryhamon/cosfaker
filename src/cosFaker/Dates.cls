Class cosFaker.Dates Extends cosFaker.lib.core
{

ClassMethod Forward(pDays As %Integer = 365, pFormat As %Integer = 3)
{
	Quit $ZDateTime(($Horolog + $Random(pDays) +1),pFormat)
}

ClassMethod Backward(pDays As %Integer = 365, pFormat As %Integer = 3)
{
	Quit $ZDateTime((($Horolog - $Random(pDays)) +1),pFormat)
}

}

