Class cosFaker.Job Extends cosFaker.lib.core
{

ClassMethod Title()
{
	Set title = $Random(3),
		seniority = ..SampleFromFile("job","title_seniority"),
		position = ..SampleFromFile("job","title_position")
	Quit:title=0 position_" de "_..Field()_" "_seniority
	Quit:title=1 position_" "_seniority
	Quit:title=2 position_" de "_..Field()
}

ClassMethod Field()
{
	Quit ..SampleFromFile("job","field")
}

ClassMethod Skills()
{
	Quit ..SampleFromFile("job","skills")
}

}

