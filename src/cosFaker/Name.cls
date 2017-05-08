/// Operating in:<br/>
/// <ul>
/// <li>En-US (Default)</li>
/// <li>Pt-BR</li>
/// </ul>
Class cosFaker.Name Extends cosFaker.lib.core
{

/// Generate a First Name
/// Female Gender = 1
/// Male Gender = 2
ClassMethod FirstName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)	
	If pGender = 2 {
		Set name = $ClassMethod(..GetClass(),"MaleFirstName")
	} Else {
		Set name = $ClassMethod(..GetClass(),"FemaleFirstName")
	}
	
	Quit name
}

ClassMethod LastName() As %String
{
	Quit $ClassMethod(..GetClass(),"LastName")
}

ClassMethod FullName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)

	If pGender = 2 {
		Set firstname = $ClassMethod(..GetClass(),"MaleFirstName")
	} Else {
		Set firstname = $ClassMethod(..GetClass(),"FemaleFirstName")
	}
	
	Set rand = $Random(3) + 1,lastname = ""
	For k=1:1:rand {
		Set:k>1 lastname = lastname _ " "
		Set lastname = lastname _ $ClassMethod(..GetClass(),"LastName")
	}
	
	Quit firstname _ " " _ lastname
}

ClassMethod Suffix() As %String
{
	Quit $ClassMethod(..GetClass(),"PersonSuffix")
}

}

