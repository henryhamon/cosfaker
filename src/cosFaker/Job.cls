Class cosFaker.Job Extends cosFaker.lib.core
{

ClassMethod Title()
{
	Set title = $Random(3),
		seniority = ..Sample($ListFromString("Lead,Senior,Product,National,Regional,District,Central,Global,Customer,Investor,Dynamic,International,Legacy,Forward,Internal,Chief",",")),
		position = ..Sample($ListFromString("Supervisor,Associate,Executive,Liaison,Officer,Manager,Engineer,Specialist,Director,Coordinator,Administrator,Architect,Analyst,Designer,Planner,Orchestrator,Technician,Developer,Producer,Consultant,Assistant,Facilitator,Agent,Representative,Strategist",","))

	Quit:title=0 seniority_" "_..Field()_" "_position
	Quit:title=1 seniority_" "_position
	Quit:title=2 ..Field()_" "_position
}

ClassMethod Field()
{
	Quit ..Sample($ListFromString("Marketing,IT,Accounting,Administration,Advertising,Banking,Community-Services,Construction,Consulting,Design,Education,Farming,Government,Healthcare,Hospitality,Legal,Manufacturing,Marketing,Mining,Real-Estate,Retail,Sales,Technology",","))
}

ClassMethod Skills()
{
	Quit ..Sample($ListFromString("Teamwork,Communication,Problem solving,Leadership,Organisation,Work under pressure,Confidence,Self-motivated,Networking skills,Proactive,Fast learner,Technical savvy",","))
}

}

