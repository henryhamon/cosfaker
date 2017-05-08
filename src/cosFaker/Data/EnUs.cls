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

ClassMethod LastName() As %String
{
	Set LName =  $ZConvert(..Sample($ListBuild("SMITH","JOHNSON","WILLIAMS","JONES","BROWN","DAVIS","MILLER","WILSON","MOORE","TAYLOR","ANDERSON","THOMAS","JACKSON","WHITE","HARRIS","MARTIN","THOMPSON","GARCIA","MARTINEZ","ROBINSON","CLARK","RODRIGUEZ","LEWIS","LEE","WALKER","HALL","ALLEN","YOUNG","HERNANDEZ","KING","WRIGHT","LOPEZ","HILL","SCOTT","GREEN","ADAMS","BAKER","GONZALEZ","NELSON","CARTER","MITCHELL","PEREZ","ROBERTS","TURNER","PHILLIPS","CAMPBELL","PARKER","EVANS","EDWARDS","COLLINS","STEWART","SANCHEZ","MORRIS","ROGERS","REED","COOK","MORGAN","BELL","MURPHY","BAILEY","RIVERA","COOPER","RICHARDSON","COX","HOWARD","WARD","TORRES","PETERSON","GRAY","RAMIREZ","JAMES","WATSON","BROOKS","KELLY","SANDERS","PRICE","BENNETT","WOOD","BARNES","ROSS","HENDERSON","COLEMAN","JENKINS","PERRY","POWELL","LONG","PATTERSON","HUGHES","FLORES","WASHINGTON","BUTLER","SIMMONS","FOSTER","GONZALES","BRYANT","ALEXANDER","RUSSELL","GRIFFIN","DIAZ","HAYES","MYERS","FORD","HAMILTON","GRAHAM","SULLIVAN","WALLACE","WOODS","COLE","WEST","JORDAN","OWENS","REYNOLDS","FISHER","ELLIS","HARRISON","GIBSON","MCDONALD","CRUZ","MARSHALL","ORTIZ","GOMEZ","MURRAY","FREEMAN","WELLS","WEBB","SIMPSON","STEVENS","TUCKER","PORTER","HUNTER","HICKS","CRAWFORD","HENRY","BOYD","MASON","MORALES","KENNEDY","WARREN","DIXON","RAMOS","REYES","BURNS","GORDON","SHAW","HOLMES","RICE","ROBERTSON","HUNT","BLACK","DANIELS","PALMER","MILLS","NICHOLS","GRANT","KNIGHT","FERGUSON","ROSE","STONE","HAWKINS","DUNN","PERKINS","HUDSON","SPENCER","GARDNER","STEPHENS","PAYNE","PIERCE","BERRY","MATTHEWS","ARNOLD","WAGNER","WILLIS","RAY","WATKINS","OLSON","CARROLL","DUNCAN","SNYDER","HART","CUNNINGHAM","BRADLEY","LANE","ANDREWS","RUIZ","HARPER","FOX","RILEY","ARMSTRONG","CARPENTER","WEAVER","GREENE","LAWRENCE","ELLIOTT","CHAVEZ","SIMS","AUSTIN","PETERS","KELLEY","FRANKLIN","LAWSON","FIELDS","GUTIERREZ","RYAN","SCHMIDT","CARR","VASQUEZ","CASTILLO","WHEELER","CHAPMAN","OLIVER","MONTGOMERY","RICHARDS","WILLIAMSON","JOHNSTON","BANKS","MEYER","BISHOP","MCCOY","HOWELL","ALVAREZ","MORRISON","HANSEN","FERNANDEZ","GARZA","HARVEY","LITTLE","BURTON","STANLEY","NGUYEN","GEORGE","JACOBS","REID","KIM","FULLER","LYNCH","DEAN","GILBERT","GARRETT","ROMERO","WELCH","LARSON","FRAZIER","BURKE","HANSON","DAY","MENDOZA","MORENO","BOWMAN","MEDINA","FOWLER","BREWER","HOFFMAN","CARLSON","SILVA","PEARSON","HOLLAND","DOUGLAS","FLEMING","JENSEN","VARGAS","BYRD","DAVIDSON","HOPKINS","MAY","TERRY","HERRERA","WADE","SOTO","WALTERS","CURTIS","NEAL","CALDWELL","LOWE","JENNINGS","BARNETT","GRAVES","JIMENEZ","HORTON","SHELTON","BARRETT","OBRIEN","CASTRO","SUTTON","GREGORY","MCKINNEY","LUCAS","MILES","CRAIG","RODRIQUEZ","CHAMBERS","HOLT","LAMBERT","FLETCHER","WATTS","BATES","HALE","RHODES","PENA","BECK","NEWMAN","HAYNES","MCDANIEL","MENDEZ","BUSH","VAUGHN","PARKS","DAWSON","SANTIAGO","NORRIS","HARDY","LOVE","STEELE","CURRY","POWERS","SCHULTZ","BARKER","GUZMAN","PAGE","MUNOZ","BALL","KELLER","CHANDLER","WEBER","LEONARD","WALSH","LYONS","RAMSEY","WOLFE","SCHNEIDER","MULLINS","BENSON","SHARP","BOWEN","DANIEL","BARBER","CUMMINGS","HINES","BALDWIN","GRIFFITH","VALDEZ","HUBBARD","SALAZAR","REEVES","WARNER","STEVENSON","BURGESS","SANTOS","TATE","CROSS","GARNER","MANN","MACK","MOSS","THORNTON","DENNIS","MCGEE","FARMER","DELGADO","AGUILAR","VEGA","GLOVER","MANNING","COHEN","HARMON","RODGERS","ROBBINS","NEWTON","TODD","BLAIR","HIGGINS","INGRAM","REESE","CANNON","STRICKLAND","TOWNSEND","POTTER","GOODWIN","WALTON","ROWE","HAMPTON","ORTEGA","PATTON","SWANSON","JOSEPH","FRANCIS","GOODMAN","MALDONADO","YATES","BECKER","ERICKSON","HODGES","RIOS","CONNER","ADKINS","WEBSTER","NORMAN","MALONE","HAMMOND","FLOWERS","COBB","MOODY","QUINN","BLAKE","MAXWELL","POPE","FLOYD","OSBORNE","PAUL","MCCARTHY","GUERRERO","LINDSEY","ESTRADA","SANDOVAL","GIBBS","TYLER","GROSS","FITZGERALD","STOKES","DOYLE","SHERMAN","SAUNDERS","WISE","COLON","GILL","ALVARADO","GREER","PADILLA","SIMON","WATERS","NUNEZ","BALLARD","SCHWARTZ","MCBRIDE","HOUSTON","CHRISTENSEN","KLEIN","PRATT","BRIGGS","PARSONS","MCLAUGHLIN","ZIMMERMAN","FRENCH","BUCHANAN","MORAN","COPELAND","ROY","PITTMAN","BRADY","MCCORMICK","HOLLOWAY","BROCK","POOLE","FRANK","LOGAN","OWEN","BASS","MARSH","DRAKE","WONG","JEFFERSON","PARK","MORTON","ABBOTT","SPARKS","PATRICK","NORTON","HUFF","CLAYTON","MASSEY","LLOYD","FIGUEROA","CARSON","BOWERS","ROBERSON","BARTON","TRAN","LAMB","HARRINGTON","CASEY","BOONE","CORTEZ","CLARKE","MATHIS","SINGLETON","WILKINS","CAIN","BRYAN","UNDERWOOD","HOGAN","MCKENZIE","COLLIER","LUNA","PHELPS","MCGUIRE","ALLISON","BRIDGES","WILKERSON","NASH","SUMMERS","ATKINS","WILCOX","PITTS","CONLEY","MARQUEZ","BURNETT","RICHARD","COCHRAN","CHASE","DAVENPORT","HOOD","GATES","CLAY","AYALA","SAWYER","ROMAN","VAZQUEZ","DICKERSON","HODGE","ACOSTA","FLYNN","ESPINOZA","NICHOLSON","MONROE","WOLF","MORROW","KIRK","RANDALL","ANTHONY","WHITAKER","OCONNOR","SKINNER","WARE","MOLINA","KIRBY","HUFFMAN","BRADFORD","CHARLES","GILMORE","DOMINGUEZ","ONEAL","BRUCE","LANG","COMBS","KRAMER","HEATH","HANCOCK","GALLAGHER","GAINES","SHAFFER","SHORT","WIGGINS","MATHEWS","MCCLAIN","FISCHER","WALL","SMALL","MELTON","HENSLEY","BOND","DYER","CAMERON","GRIMES","CONTRERAS","CHRISTIAN","WYATT","BAXTER","SNOW","MOSLEY","SHEPHERD","LARSEN","HOOVER","BEASLEY","GLENN","PETERSEN","WHITEHEAD","MEYERS","KEITH","GARRISON","VINCENT","SHIELDS","HORN","SAVAGE","OLSEN","SCHROEDER","HARTMAN","WOODARD","MUELLER","KEMP","DELEON","BOOTH","PATEL","CALHOUN","WILEY","EATON","CLINE","NAVARRO","HARRELL","LESTER","HUMPHREY","PARRISH","DURAN","HUTCHINSON","HESS","DORSEY","BULLOCK","ROBLES","BEARD","DALTON","AVILA","VANCE","RICH","BLACKWELL","YORK","JOHNS","BLANKENSHIP","TREVINO","SALINAS","CAMPOS","PRUITT","MOSES","CALLAHAN","GOLDEN","MONTOYA")),"L")
	Quit $ZConvert($Extract(LName,1,1),"U")_$Extract(LName,2,*)
}

ClassMethod MaleFirstName() As %String
{
	Set FName = $ZConvert(..Sample($ListBuild("JAMES","JOHN","ROBERT","MICHAEL","WILLIAM","DAVID","RICHARD","CHARLES","JOSEPH","THOMAS","CHRISTOPHER","DANIEL","PAUL","MARK","DONALD","GEORGE","KENNETH","STEVEN","EDWARD","BRIAN","RONALD","ANTHONY","KEVIN","JASON","MATTHEW","GARY","TIMOTHY","JOSE","LARRY","JEFFREY","FRANK","SCOTT","ERIC","STEPHEN","ANDREW","RAYMOND","GREGORY","JOSHUA","JERRY","DENNIS","WALTER","PATRICK","PETER","HAROLD","DOUGLAS","HENRY","CARL","ARTHUR","RYAN","ROGER","JOE","JUAN","JACK","ALBERT","JONATHAN","JUSTIN","TERRY","GERALD","KEITH","SAMUEL","WILLIE","RALPH","LAWRENCE","NICHOLAS","ROY","BENJAMIN","BRUCE","BRANDON","ADAM","HARRY","FRED","WAYNE","BILLY","STEVE","LOUIS","JEREMY","AARON","RANDY","HOWARD","EUGENE","CARLOS","RUSSELL","BOBBY","VICTOR","MARTIN","ERNEST","PHILLIP","TODD","JESSE","CRAIG","ALAN","SHAWN","CLARENCE","SEAN","PHILIP","CHRIS","JOHNNY","EARL","JIMMY","ANTONIO","DANNY","BRYAN","TONY","LUIS","MIKE","STANLEY","LEONARD","NATHAN","DALE","MANUEL","RODNEY","CURTIS","NORMAN","ALLEN","MARVIN","VINCENT","GLENN","JEFFERY","TRAVIS","JEFF","CHAD","JACOB","LEE","MELVIN","ALFRED","KYLE","FRANCIS","BRADLEY","JESUS","HERBERT","FREDERICK","RAY","JOEL","EDWIN","DON","EDDIE","RICKY","TROY","RANDALL","BARRY","ALEXANDER","BERNARD","MARIO","LEROY","FRANCISCO","MARCUS","MICHEAL","THEODORE","CLIFFORD","MIGUEL","OSCAR","JAY","JIM","TOM","CALVIN","ALEX","JON","RONNIE","BILL","LLOYD","TOMMY","LEON","DEREK","WARREN","DARRELL","JEROME","FLOYD","LEO","ALVIN","TIM","WESLEY","GORDON","DEAN","GREG","JORGE","DUSTIN","PEDRO","DERRICK","DAN","LEWIS","ZACHARY","COREY","HERMAN","MAURICE","VERNON","ROBERTO","CLYDE","GLEN","HECTOR","SHANE","RICARDO","SAM","RICK","LESTER","BRENT","RAMON","CHARLIE","TYLER","GILBERT","GENE","MARC","REGINALD","RUBEN","BRETT","ANGEL","NATHANIEL","RAFAEL","LESLIE","EDGAR","MILTON","RAUL","BEN","CHESTER","CECIL","DUANE","FRANKLIN","ANDRE","ELMER","BRAD","GABRIEL","RON","MITCHELL","ROLAND","ARNOLD","HARVEY","JARED","ADRIAN","KARL","CORY","CLAUDE","ERIK","DARRYL","JAMIE","NEIL","JESSIE","CHRISTIAN","JAVIER","FERNANDO","CLINTON","TED","MATHEW","TYRONE","DARREN","LONNIE","LANCE","CODY","JULIO","KELLY","KURT","ALLAN","NELSON","GUY","CLAYTON","HUGH","MAX","DWAYNE","DWIGHT","ARMANDO","FELIX","JIMMIE","EVERETT","JORDAN","IAN","WALLACE","KEN","BOB","JAIME","CASEY","ALFREDO","ALBERTO","DAVE","IVAN","JOHNNIE","SIDNEY","BYRON","JULIAN","ISAAC","MORRIS","CLIFTON","WILLARD","DARYL","ROSS","VIRGIL","ANDY","MARSHALL","SALVADOR","PERRY","KIRK","SERGIO","MARION","TRACY","SETH","KENT","TERRANCE","RENE","EDUARDO","TERRENCE","ENRIQUE","FREDDIE","WADE")),"L")
	Quit $ZConvert($Extract(FName,1,1),"U")_$Extract(FName,2,*)
}

ClassMethod FemaleFirstName() As %String
{
	Set FName = $ZConvert(..Sample($ListBuild("MARY","PATRICIA","LINDA","BARBARA","ELIZABETH","JENNIFER","MARIA","SUSAN","MARGARET","DOROTHY","LISA","NANCY","KAREN","BETTY","HELEN","SANDRA","DONNA","CAROL","RUTH","SHARON","MICHELLE","LAURA","SARAH","KIMBERLY","DEBORAH","JESSICA","SHIRLEY","CYNTHIA","ANGELA","MELISSA","BRENDA","AMY","ANNA","REBECCA","VIRGINIA","KATHLEEN","PAMELA","MARTHA","DEBRA","AMANDA","STEPHANIE","CAROLYN","CHRISTINE","MARIE","JANET","CATHERINE","FRANCES","ANN","JOYCE","DIANE","ALICE","JULIE","HEATHER","TERESA","DORIS","GLORIA","EVELYN","JEAN","CHERYL","MILDRED","KATHERINE","JOAN","ASHLEY","JUDITH","ROSE","JANICE","KELLY","NICOLE","JUDY","CHRISTINA","KATHY","THERESA","BEVERLY","DENISE","TAMMY","IRENE","JANE","LORI","RACHEL","MARILYN","ANDREA","KATHRYN","LOUISE","SARA","ANNE","JACQUELINE","WANDA","BONNIE","JULIA","RUBY","LOIS","TINA","PHYLLIS","NORMA","PAULA","DIANA","ANNIE","LILLIAN","EMILY","ROBIN","PEGGY","CRYSTAL","GLADYS","RITA","DAWN","CONNIE","FLORENCE","TRACY","EDNA","TIFFANY","CARMEN","ROSA","CINDY","GRACE","WENDY","VICTORIA","EDITH","KIM","SHERRY","SYLVIA","JOSEPHINE","THELMA","SHANNON","SHEILA","ETHEL","ELLEN","ELAINE","MARJORIE","CARRIE","CHARLOTTE","MONICA","ESTHER","PAULINE","EMMA","JUANITA","ANITA","RHONDA","HAZEL","AMBER","EVA","DEBBIE","APRIL","LESLIE","CLARA","LUCILLE","JAMIE","JOANNE","ELEANOR","VALERIE","DANIELLE","MEGAN","ALICIA","SUZANNE","MICHELE","GAIL","BERTHA","DARLENE","VERONICA","JILL","ERIN","GERALDINE","LAUREN","CATHY","JOANN","LORRAINE","LYNN","SALLY","REGINA","ERICA","BEATRICE","DOLORES","BERNICE","AUDREY","YVONNE","ANNETTE","JUNE","SAMANTHA","MARION","DANA","STACY","ANA","RENEE","IDA","VIVIAN","ROBERTA","HOLLY","BRITTANY","MELANIE","LORETTA","YOLANDA","JEANETTE","LAURIE","KATIE","KRISTEN","VANESSA","ALMA","SUE","ELSIE","BETH","JEANNE","VICKI","CARLA","TARA","ROSEMARY","EILEEN","TERRI","GERTRUDE","LUCY","TONYA","ELLA","STACEY","WILMA","GINA","KRISTIN","JESSIE","NATALIE","AGNES","VERA","WILLIE","CHARLENE","BESSIE","DELORES","MELINDA","PEARL","ARLENE","MAUREEN","COLLEEN","ALLISON","TAMARA","JOY","GEORGIA","CONSTANCE","LILLIE","CLAUDIA","JACKIE","MARCIA","TANYA","NELLIE","MINNIE","MARLENE","HEIDI","GLENDA","LYDIA","VIOLA","COURTNEY","MARIAN","STELLA","CAROLINE","DORA","JO","VICKIE","MATTIE","TERRY","MAXINE","IRMA","MABEL","MARSHA","MYRTLE","LENA","CHRISTY","DEANNA","PATSY","HILDA","GWENDOLYN","JENNIE","NORA","MARGIE","NINA","CASSANDRA","LEAH","PENNY","KAY","PRISCILLA","NAOMI","CAROLE","BRANDY","OLGA","BILLIE","DIANNE","TRACEY","LEONA","JENNY","FELICIA","SONIA","MIRIAM","VELMA","BECKY","BOBBIE","VIOLET","KRISTINA","TONI","MISTY","MAE","SHELLY","DAISY","RAMONA","SHERRI","ERIKA","KATRINA","CLAIRE")),"L")
	Quit $ZConvert($Extract(FName,1,1),"U")_$Extract(FName,2,*)
}

ClassMethod CompanySuffix() As %String
{
	Set $List(CompanySuffix, *+1) = "Corp."
	Set $List(CompanySuffix, *+1) = "Inc."
	Set $List(CompanySuffix, *+1) = "Co."
	Set $List(CompanySuffix, *+1) = "Ltd."
	Set $List(CompanySuffix, *+1) = "LC"
	Set $List(CompanySuffix, *+1) = "LLC"
	Set $List(CompanySuffix, *+1) = "PLLC"
	Set $List(CompanySuffix, *+1) = "LP"
	Set $List(CompanySuffix, *+1) = "LLP"
	Set $List(CompanySuffix, *+1) = "LLLP"
	Quit ..Sample(CompanySuffix)
}

ClassMethod PersonSuffix() As %String
{
	Set $List(PersonSuffix, *+1) = "Jr."
  	Set $List(PersonSuffix, *+1) = "Grandson"
	Set $List(PersonSuffix, *+1) = "Son"
	Set output = $ListGet(PersonSuffix,$Random($ListLength(PersonSuffix)) + 1)
	Kill PersonSuffix
	Quit output
}

}

