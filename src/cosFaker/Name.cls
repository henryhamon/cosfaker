Class cosFaker.Name Extends %RegisteredObject
{

/// Generate a First Name
/// Female Gender = 1
/// Male Gender = 1
ClassMethod FirstName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)
	
	Set name = ##class(cosFaker.Data.PtBr).FemaleFirstName()
	If pGender = 2 {
		Set name = ##class(cosFaker.Data.PtBr).MaleFirstName()
	} 
	
	Quit name
}

ClassMethod LastName() As %String
{
	Quit ##class(cosFaker.Data.PtBr).LastName()
}

ClassMethod FullName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)
	
	Set firstname = ##class(cosFaker.Data.PtBr).FemaleFirstName()
	If pGender = 2 {
		Set firstname = ##class(cosFaker.Data.PtBr).MaleFirstName()
	} 
	
	S rand = $R(3) + 1,lastname = ""
	F k=1:1:rand {
		S:k>1 lastname = lastname _ " "
		S lastname = lastname _ ##class(cosFaker.Data.PtBr).LastName()
	}
	
	Quit firstname _ " " _ lastname
}

ClassMethod Suffix() As %String
{
	Q ##class(cosFaker.Data.PtBr).PersonSuffix()
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
	Do ..Initializer()
	Quit $$$OK
}

Method Initializer() [ Private ]
{
}

}

