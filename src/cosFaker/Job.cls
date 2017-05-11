Class cosFaker.Job Extends cosFaker.lib.core
{

ClassMethod Title()
{
	Set title = $Random(3),
		seniority = ..SampleFromFile("title_seniority"),
		position = ..SampleFromFile("title_position")
	Quit:title=0 position_" "_..SampleFromFile("separator")_" "_..Field()_" "_seniority
	Quit:title=1 position_" "_seniority
	Quit:title=2 position_" "_..SampleFromFile("separator")_" "_..Field()
}

ClassMethod Field()
{
	Quit ..SampleFromFile("field")
}

ClassMethod Skills()
{
	Quit ..SampleFromFile("skills")
}

}

