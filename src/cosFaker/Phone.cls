Class cosFaker.Phone Extends cosFaker.lib.core
{

ClassMethod PhoneNumber(pArea As %Boolean = 1) As %String
{
	Set area = ""
	Set:pArea area = "("_..AreaCode()_") "
	
	Quit area_..MaskNumber("####-####")
}

ClassMethod CellPhone(pArea As %Boolean = 1) As %String
{
	Set area = ""
	Set:pArea area = "("_..AreaCode()_") "
	
	Quit area_..MaskNumber("9####-####")
}

ClassMethod AreaCode() As %String
{
	Quit ..MaskNumber("##",1,9)
}

}

