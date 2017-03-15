Class cosFaker.Person
{

ClassMethod cpf(pPretty As %Boolean = 1) As %String
{
	For k=1:1:9 {
		Set $List(CpfRoot,*+1) = $Random(10)
	}
	
	Set sum = 0
	For k=1:1:$ListLength(CpfRoot) {
		Set sum = sum + ($List(CpfRoot, k) * (10 - (k-1)))
	}
	
	Set firstValidator = sum # 11
	If (firstValidator=10)||(firstValidator=11)||(firstValidator<2) {
		Set firstValidator = 0
	} Else {
		Set firstValidator = 11 - firstValidator
	}
	
	Set $List(CpfRoot, *+1) = firstValidator,
		sum = 0
		
	For k=1:1:$ListLength(CpfRoot) {
		Set sum = sum + ($List(CpfRoot, k) * (11 - (k-1)))
	}
	
	Set secondValidator = sum # 11
	If (secondValidator=10) || (secondValidator=11)|| (secondValidator<2) {
		Set secondValidator = 0
	} Else {
		Set secondValidator = 11 - secondValidator
	}
	
	Set $List(CpfRoot, *+1) = secondValidator,
		cpf = $ListToString(CpfRoot,"")
	
	Set:$Length(cpf)>11 cpf = ..cpf(pPretty)
	
	Set:pPretty=$$$YES cpf = $Extract(cpf,1,3)_"."_$Extract(cpf,4,6)_"."_$Extract(cpf,7,9)_"-"_$Extract(cpf,10,11)
	Quit cpf
}

}

