Class cosFaker.Color Extends cosFaker.lib.core
{

ClassMethod Hexadecimal() As %String
{
	Quit "#"_$ZConvert(..Times(6,"cosFaker.lib.core","Hexadecimal"),"U")
}

ClassMethod RGB() As %String
{
	Quit ..MaskNumber("#",0,255)_","_..MaskNumber("#",0,255)_","_..MaskNumber("#",0,255)
}

ClassMethod Name() As %String
{
	Quit ..SampleFromFile("names")
}

}

