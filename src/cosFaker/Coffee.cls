Class cosFaker.Coffee Extends cosFaker.lib.core
{

ClassMethod BlendName() As %String
{
	Set name1 = ..Sample($ListBuild("Summer", "Holiday", "Jacked", "Joe", "Express", "Reg's", "Split", "Spilt", "Chocolate", "Dark", "Veranda", "Major", "Bluebery", "American", "Huggy", "Wake-up", "Morning", "Evening", "Winter", "Captain's", "Thanksgiving", "Seattle", "Brooklyn", "Café", "Blacktop", "Pumpkin-spice", "Good-morning", "Postmodern", "The Captain's", "The", "Cascara", "Melty", "Heart", "Goodbye", "Hello", "Street", "Red", "Blue", "Green", "Strong", "KrebStar", "Kreb-Full-o"))
	Set name2 = ..Sample($ListBuild("Solstice", "Blend", "Level", "Enlightenment", "Cowboy", "", "Choice", "Select", "Equinox", "Star", "Forrester", "Java", "Symphony", "Utopia", "Cup", "Mug", "Been", "Bean", "Cake", "Extract", "Delight", "Pie", "America", "Treat", "Volcano", "Breaker", "Town", "Light", "Look", "Coffee", "Nuts"))
	Quit name1_" "_name2
}

ClassMethod Variety() As %String
{
	Quit ..Sample($ListBuild("Liberica", "S288", "S795", "Kent", "Java", "Dilla", "Sumatara", "Catuai", "Pacamara", "Mundo Novo", "Red Bourbon", "Bourbon", "Yellow Bourbon", "Pacas", "Caturra", "Pink Bourbon", "Colombia", "Obata", "Catimors", "Sarchimor", "Mokka", "Kaffa", "Gimma", "Tafari-Kela", "S.4", "Agaro", "Dega", "Barbuk Sudan", "Ennarea", "Geisha", "Gesha", "Blue Mountain", "Kona", "San Ramon", "SL28", "SL34", "Villa Sarchi", "Villalobos", "Typica", "Ethiopian Heirloom"))
}

ClassMethod Notes() As %String
{
	Set intensifier = ..Sample($ListBuild("muted", "dull", "mild", "structured", "balanced", "rounded", "soft", "faint", "delicate", "dry", "astringent", "quick", "clean", "crisp", "bright", "vibrant", "tart", "wild", "unbalanced", "sharp", "pointed", "dense", "deep", "complex", "juicy", "lingering", "dirty"))
	Set body = ..Sample($ListBuild("watery", "tea-like", "silky", "slick", "juicy", "smooth", "syrupy", "round", "creamy", "full", "velvety", "big", "chewy", "coating"))
	
	For k=1:1:3 {
		Set $List(descriptor,*+1) = ..Sample($ListBuild("bergamot", "hops", "black-tea", "green-tea", "mint", "sage", "dill", "grassy", "snow pea", "sweet pea", "mushroom", "squash", "green pepper", "olive", "leafy greens", "hay", "tobacco", "cedar", "fresh wood", "soil", "tomato", "sundried tomato", "soy sauce", "leathery", "clove", "liquorice", "curry", "nutmeg", "ginger", "corriander", "cinnamon", "white pepper", "black pepper", "carbon", "smokey", "burnt sugar", "toast", "fresh bread", "barley", "wheat", "rye", "graham cracker", "granola", "almond", "hazelnut", "pecan", "cashew", "peanut", "walnut", "cola", "molasses", "maple syrup", "carmel", "brown sugar", "sugar cane", "marshmallow", "cream", "butter", "honey", "nougat", "vanilla", "milk chocolate", "cocoa powder", "bittersweet chocolate", "bakers chocolate", "cacao nibs", "prune", "dates", "figs", "raisin", "golden raisin", "black currant", "red currant", "blueberry", "strawberry", "raspberry", "cranberry", "black cherry", "cherry", "plum", "apricot", "nectarine", "peach", "coconut", "banana", "kiwi", "mango", "papaya", "pineapple", "passion fruit", "tamarind", "star fruit", "lychee", "concord grape", "red grape", "green grape", "white grape", "cantaloupe", "honeydew", "watermelon", "red apple", "green apple", "orange", "mandarin", "tangerine", "clementine", "grapefruit", "lime", "meyer lemon", "lemonade", "lemon", "orange creamsicle", "marzipan", "nutella", "lemongrass", "orange blossom", "jasmine", "honeysuckle", "magnolia", "lavender", "rose hips", "hibiscus", "lemon verbena", "medicinal", "quakery", "baggy", "potato defect!", "musty", "rubber"))
	}
	
	Quit intensifier _ ", "_body_", "_$List(descriptor,1)_", "_$List(descriptor,2)_", "_$List(descriptor,3)
}

ClassMethod Origin() As %String
{
	Set country = ..Sample($ListBuild("Brazil", "Colombia", "Sumatra", "Ethiopia", "Honduras", "Kenya", "Uganda", "Mexico", "Guatemala", "Nicaragua", "Costa Rica", "Tanzania", "El Salvador", "Rwanda", "Burundi", "Panama", "Yemen", "India"))

	Set region = ##class(%ArrayOfDataTypes).%New()	
	Do region.SetAt($ListBuild("Sul Minas", "Mogiana", "Cerrado"),"brazil")
	Do region.SetAt($ListBuild("Nariño", "Huila", "Tolima", "Cauca", "Casanare", "Santander", "Antioquia", "Cundinamarca", "Boyacá"),"colombia")
	Do region.SetAt($ListBuild("Tapanuli", "Lintong", "Aceh", "Lake Tawar", "Lintong", "Gayo"),"sumatra")
	Do region.SetAt($ListBuild("Sidama", "Harrar", "Limu", "Ojimmah", "Lekempti", "Wellega", "Gimbi"),"ethiopia")
	Do region.SetAt($ListBuild("Agalta", "Comayagua", "Copan", "Montecillos", "Opalca", "El Paraiso"),"honduras")
	Do region.SetAt($ListBuild("Bungoma", "Embu", "Kiamba", "Kirinyaga", "Mt. Kenya", "Kisii", "Meru", "Murang'a", "Machakos", "Thika", "Nyeri", "Nakuru", "Nyanza", "Kericho"),"kenya")
	Do region.SetAt($ListBuild("Bugisu", "Mount Elgon", "Kibale"),"uganda")
	Do region.SetAt($ListBuild("Chiapas", "Oaxaca", "Veracruz", "Colima", "San Luis Potosi", "Nayarit", "Hidalgo", "Puebla", "Jalisco"),"mexico")
	Do region.SetAt($ListBuild("Acatenango", "Antigua", "Atitlan", "Fraijanes", "Huehuetenango", "Nuevo Oriente", "Coban", "San Marcos"),"guatemala")
	Do region.SetAt($ListBuild("Matagalpa", "Jinotega", "Boaco", "Madriz", "Nueva Segovia", "Estelí", "Dipilto", "Jalapa", "Carazo", "Granada", "Masaya", "Managua", "Rivas"),"nicaragua")
	Do region.SetAt($ListBuild("Tarrazu", "Central Valley", "West Valley", "Guanacaste", "Tres Rios", "Turrialba", "Orosi", "Brunca"),"costa rica")
	Do region.SetAt($ListBuild("Western Region, Bukova", "Western Region, Kigoma", "Mbeya Region", "Southern Region, Mbinga", "Western Region, Tarime", "Northern Region, Oldeani", "Northern Region, Arusha", "Northern Region, Kilimanjaro", "Southern Region, Morogoro"),"tanzania")
	Do region.SetAt($ListBuild("Alotepec-Metapán", "Apaneca-Ilamatepec", "El Balsamo-Quetzaltepec", "Cacahuatique", "Chichontepec", "Tecapa-Chinameca"),"el salvador")
	Do region.SetAt($ListBuild("Rulindo", "Gishamwana Coffee Island", "Lake Kivu Region", "Kigeyo Washing Station", "Kabirizi"),"rwanda")
	Do region.SetAt($ListBuild("Kayanza"),"burundi")
	Do region.SetAt($ListBuild("Boquete", "Chiriqui", "Volcan"),"panama")
	Do region.SetAt($ListBuild("Mattari", "San'ani", "Hirazi", "Raimi"),"yemen")
	Do region.SetAt($ListBuild("Chikmagalur", "Coorg","Biligiris", "Bababudangiris", "Manjarabad", "Nilgiris", "Travancore", "Manjarabad", "Brahmaputra", "Pulneys", "Sheveroys"),"india")
	
	Quit ..Sample(region.GetAt($ZConvert(country,"l")))_", "_country
}

}

