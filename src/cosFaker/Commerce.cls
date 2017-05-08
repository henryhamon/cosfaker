<?xml version="1.0" encoding="UTF-8"?>
<Export generator="Cache" version="25" zv="Cache for Windows (x86-64) 2016.2.1 (Build 803)" ts="2017-05-08 13:29:56">
<Class name="cosFaker.Commerce">
<TimeChanged>64411,48515.205149</TimeChanged>
<TimeCreated>64016,37345.119926</TimeCreated>

<Method name="Price">
<ClassMethod>1</ClassMethod>
<FormalSpec>pMin:%Integer=0,pMax:%Integer=1000,pDec:%Integer=2,pSymbol:%String=""</FormalSpec>
<Implementation><![CDATA[
	Set bOk = $$$NO, $Piece(dec,"9",pDec+1)="", $Piece(tmp,"0",pDec+1)=""
	
	While bOk = $$$NO {
		Set randdec = $Random(dec)
		Set rand = $Random(pMax ) _ "." _ randdec _ $Extract(tmp, 0, $Length(tmp)-$Length(randdec))
		Set:((rand >= pMin)&&(rand <= pMax)) bOk = $$$YES
	}
	
	Quit pSymbol _ rand
]]></Implementation>
</Method>

<Method name="CNPJ">
<ClassMethod>1</ClassMethod>
<FormalSpec>pPretty:%Boolean=1</FormalSpec>
<ReturnType>%String</ReturnType>
<Implementation><![CDATA[
	#define r $Random(9)
	Set n1 = $$$r,
		n2 = $$$r,
		n3 = $$$r,
		n4 = $$$r,
		n5 = $$$r,
		n6 = $$$r,
		n7 = $$$r,
		n8 = $$$r,
		n9 = 0,
		n10 = 0,
		n11 = 0,
		n12 = 1
	Set d1 = (n12*2) + (n11*3) + (n10*4) + (n9*5) + (n8*6) + (n7*7) + (n6*8) + (n5*9) + (n4*2) + (n3*3) + (n2*4) + (n1*5)
	Set d1 = 11 - ..mod(d1,11)
	Set:d1>=10 d1 = 0
	Set d2 = (d1*2) + (n12*3) + (n11*4) + (n10*5) + (n9*6) + (n8*7) + (n7*8) + (n6*9) + (n5*2) + (n4*3) + (n3*4) + (n2*5) + (n1*6)
	Set d2 = 11 - (..mod(d2,11))
	Set:d2>=10 d2 = 0
	Set ret = ""
	Set:pPretty ret = n1_n2_"."_n3_n4_n5_"."_n6_n7_n8_"/"_n9_n10_n11_n12_"-"_d1_d2
	Set:'pPretty ret = n1_n2_n3_n4_n5_n6_n7_n8_n9_n10_n11_n12_d1_d2
	Quit ret
]]></Implementation>
</Method>

<Method name="mod">
<ClassMethod>1</ClassMethod>
<FormalSpec>div1,div2</FormalSpec>
<Private>1</Private>
<Implementation><![CDATA[	Quit $Number(div1 - (((div1/div2)\1)*div2),0)
]]></Implementation>
</Method>
</Class>
</Export>
