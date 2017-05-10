Class cosFaker.Name Extends cosFaker.lib.core
{

/// Generate a First Name
/// Female Gender = 1
/// Male Gender = 2
ClassMethod FirstName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)	
	Quit:pGender=2 ..SampleFromFile("male_names")
	Quit ..SampleFromFile("female_names")
}

ClassMethod LastName() As %String
{
	Quit ..SampleFromFile("last_names")
}

ClassMethod FullName(pGender As %Integer = "") As %String
{
	Set:pGender="" pGender = ($Random(2) + 1)

	If pGender = 2 {
		Set firstname = ..SampleFromFile("male_names")
	} Else {
		Set firstname = ..SampleFromFile("female_names")
	}
	
	Set rand = $Random(3) + 1,lastname = ""
	For k=1:1:rand {
		Set:k>1 lastname = lastname _ " "
		Set lastname = lastname _ ..SampleFromFile("last_names")
	}
	
	Quit firstname _ " " _ lastname
}

ClassMethod Suffix() As %String
{
	Quit ..SampleFromFile("person_suffix")
}

}

