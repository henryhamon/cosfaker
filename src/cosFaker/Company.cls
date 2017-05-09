Class cosFaker.Company Extends cosFaker.lib.core
{

ClassMethod Name() As %String
{
	Quit $Case($Random(2),
		1:##class(Name).FirstName()_" "_..SampleFromFile("company","suffix"),
		:##class(Name).LastName()_" "_..SampleFromFile("company","suffix"))
}

ClassMethod Profession() As %String
{
	Set prof = $ZConvert(..SampleFromFile("company","profession"),"l")
	Quit $ZConvert($Extract(prof,1,1),"U")_$Extract(prof,2,*)
}

ClassMethod Industry() As %String
{
	Quit ..SampleFromFile("company","industry")
}

}

