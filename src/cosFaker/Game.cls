Class cosFaker.Game Extends cosFaker.lib.core
{

ClassMethod MortalKombat() As %String
{
	Set characters = $ListBuild("Liu Kang","Scorpion","Raiden","Johnny Cage","Sub-Zero","Sonya Blade","Kano","Reptile","Goro","Jax","Kitana","Kung Lao","Mileena","Nightwolf")
	Quit ..Sample(characters)
}

ClassMethod StreetFighter() As %String
{
	Set characters = $ListBuild("Ryu","Ken","Retsu","Geki","Joe","Mike","Lee","Gen","Birdie","Eagle","Adon","Sagat","Chun-Li","Blanka","Zangief","EHonda","Guile","Dhalsim","Balrog","Vega","MBison","THawk","Cammy","FeiLong","DeeJay","Akuma")
	Quit ..Sample(characters)
}

ClassMethod Card(pAbrev As %Boolean = 0) As %String
{
	Quit $ClassMethod(..GetClass(),"Card",pAbrev)
}

}

