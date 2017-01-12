Class cosFaker.Name Extends %RegisteredObject
{

/*
function validarCPF(cpf) {  
         
    // Valida 1o digito 
    add = 0;    
    for (i=0; i < 9; i ++)       
        add += parseInt(cpf.charAt(i)) * (10 - i);  
        rev = 11 - (add % 11);  
        if (rev == 10 || rev == 11)     
            rev = 0;    
        if (rev != parseInt(cpf.charAt(9)))     
            return false;       
    // Valida 2o digito 
    add = 0;    
    for (i = 0; i < 10; i ++)        
        add += parseInt(cpf.charAt(i)) * (11 - i);  
    rev = 11 - (add % 11);  
    if (rev == 10 || rev == 11) 
        rev = 0;    
    if (rev != parseInt(cpf.charAt(10)))
        return false;       
    return true;   
}

*/
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

