Class cosFaker.Data.EnUs Extends cosFaker.lib.core
{

ClassMethod Country(pAbrev As %Boolean = 0) As %String
{
	Quit:pAbrev ..Sample($ListBuild("AF","AL","DZ","AO","AR","AM","AZ","BD","BY","BZ","BJ","BT","BO","BA","BW","BR","BG","BF","BI","KH","CM","CV","CF","TD","CL","CN","CO","KM","CG","CK","CR","CI","HR","CU","KP","CD","DJ","DM","DO","EC","EG","SV","GQ","ER","ET","FJ","GA","GM","GE","GH","GD","GT","GN","GW","GY","HT","HN","HU","IN","ID","IR","IQ","JM","JO","KZ","KE","KI","KG","LA","LV","LB","LS","LR","LY","LT","MG","MW","MY","MV","ML","MH","MR","MU","MX","FM","MN","ME","MA","MZ","MM","NA","NR","NP","NI","NE","NG","NU","OM","PK","PW","PA","PG","PY","PE","PH","PL","MD","RO","RU","RW","KN","LC","VC","WS","ST","SN","RS","SC","SL","SK","SB","SO","ZA","LK","SD","SR","SZ","SY","TJ","TH","MK","TL","TG","TO","TN","TR","TM","TV","UG","UA","TZ","UY","UZ","VU","VE","VN","YE","ZM","ZW"))
	Quit ..Sample($ListBuild("Afghanistan","Albania","Algeria","Angola","Argentina","Armenia","Azerbaijan","Bangladesh","Belarus","Belize","Benin","Bhutan","Bolivia (Plurinational State of)","Bosnia and Herzegovina","Botswana","Brazil","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Central African Republic","Chad","Chile","China","Colombia","Comoros","Congo","Cook Islands","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Democratic People's Republic of Korea","Democratic Republic of the Congo","Djiboutia","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Ethiopia","Fiji","Gabon","Gambia","Georgia","Ghana","Grenada","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Honduras","Hungary","India","Indonesia","Iran (Islamic Republic of)","Iraq","Jamaica","Jordan","Kazakhstan","Kenya","Kiribati","Kyrgyzstan","Lao People's Democratic Republic","Latvia","Lebanon","Lesotho","Liberia","Libyan Arab Jamahiriya","Lithuania","Madagascar","Malawi","Malaysia","Maldives","Mali","Marshall Islands","Mauritania","Mauritius","Mexico","Micronesia (Federated States of)","Mongolia","Montenegro","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Nicaragua","Niger","Nigeria","Niue","Oman","Pakistan","Palau","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Republic of Moldova","Romania","Russian Federation","Rwanda","Saint Kitts and Nevis","Saint Lucia","Saint Vincent and the Grenadines","Samoa","Sao Tome and Principe","Senegal","Serbia","Seychelles","Sierra Leone","Slovakia","Solomon Islands","Somalia","South Africa","Sri Lanka","Sudan","Suriname","Swaziland","Syrian Arab Republic","Tajikistan","Thailand","The former Yugoslav Republic of Macedonia","Timor-Leste","Togo","Tonga","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Republic of Tanzania","Uruguay","Uzbekistan","Vanuatu","Venezuela (Bolivarian Republic of)","Viet Nam","Yemen","Zambia","Zimbabwe"))
}

ClassMethod AppAction(pGroup = "") As %String
{
	Set:pGroup="" pGroup = $ListGet($ListFromString("SQL,IF,FUN",","),$Random(3)+1)
	
	If pGroup = "SQL" {
		Set $List(actions,*+1) = "Search"
		Set $List(actions,*+1) = "Results"
		Set $List(actions,*+1) = "Persist"
		Set $List(actions,*+1) = "Acess"
		Set $List(actions,*+1) = "Integrate"
		Set $List(actions,*+1) = "Totalize"
		Set $List(actions,*+1) = "Count"
		Set $List(actions,*+1) = "Virtualize"
		Set $List(actions,*+1) = "Consult"
		Set $List(actions,*+1) = "Check"
		Set $List(actions,*+1) = "Generate"
	}
	
	If pGroup = "IF" {
		Set $List(actions,*+1) = "Compare"
		Set $List(actions,*+1) = "Check"
		Set $List(actions,*+1) = "Enable"
		Set $List(actions,*+1) = "Validate"
	}
	
	If pGroup = "FUN" {
		Set $List(actions,*+1) = "Calculate"
		Set $List(actions,*+1) = "Analyze"
		Set $List(actions,*+1) = "Run"
		Set $List(actions,*+1) = "Assign"
		Set $List(actions,*+1) = "Generate"
		Set $List(actions,*+1) = "Totalize"

	}
	Set output = $ListGet(actions,$Random($ListLength(actions)) + 1)
	Kill actions
	Quit output
}

ClassMethod AppType() As %String
{
	Set $List(things,*+1) = "Tax"
	Set $List(things,*+1) = "Invoice"
	Set $List(things,*+1) = "Income"
	Set $List(things,*+1) = "Sale"
	Set $List(things,*+1) = "Items"
	Set $List(things,*+1) = "Store"
	Set $List(things,*+1) = "Salesman"
	Set $List(things,*+1) = "Products"
	Set $List(things,*+1) = "Region"
	Set $List(things,*+1) = "Localization"
	Set $List(things,*+1) = "Prices"
	
	Quit ..Sample(things)
}

}

