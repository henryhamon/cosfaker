Class cosFaker.UFC Extends cosFaker.lib.core
{

ClassMethod Nickname()
{
	Set nick = $ListBuild("Pit Bull","Skyscraper","Big Country","Hapa","The Warmaster","The Black Beast","Big","The Bear", "Freight Train", "The Big Ticket", "The Predator", "Leopard", "Razor", "Tybur", "The Hand", "The Prototype", "Silverback", "Godzilla", "Man Mountain", "The Lifeguard", "The Gorilla", "Drago","Daddy Long Legs", "Wicked Machine", "Big Pretty", "Siwy", "Hot Fuse", "Rumble", "Shogun", "The Duke", "Little Dog", "Poster Boy", "The Sledgehammer", "Frankenstein", "The Boss", "The Hulk", "The War Horse", "Brown Bear", "The Sandman", "Werewolf", "The Dentist", "The Big Swinging", "Grizzly", "The Great", "The Phenom", "The Spider", "Bigg Rigg", "The Dragon", "The Barbarian", "The Doberman", "The Dreamcatcher", "Hot Sauce", "The Reaper", "Soldier of God", "Lionheart", "The Spartan", "Bear", "Lex Luthor", "Soldier Boy", "Holy War Angel", "The Joker", "The Hammer", "Prime Time", "The Prototype",  "El Dirte", "Cowboy",  "Rush", "The Immortal", "Ruthless",   "The Natural Born Killer", "The Juggernaut", "Quicksand",   "The Stun Gun", "Gamebred", "The Chosen One", "The Dirty Bird",  "The Tiger", "Killer", "The Crusher", "Wonderboy", "The Outlaw",  "The Hitman", "The Kid", "Brahma", "Sponge", "The Panther", "Chaos",  "Rocky", "Wolverine", "Sexyama", "Tarzan", "Slingshot", "The Machine",  "Disciple", "The Nightmare", "The Silent Assassin", "The Ace",  "Young Gun", "Filthy Rich", "Thunder", "The Silencer", "Rude Boy",   "The Octopus", "Strasser", "Remember the Name", "Nonstop Action-Packed",  "Hot Chocolate", "Capoeira", "Platinum", "The Great White", "Steel",  "Hannibal", "The Hybrid", "Animal", "Soulforce", "Pain",   "Chango", "Abacus", "Cyborg", "Judo Thunder", "Valhalla",  "The Problem", "Judo", "Relentless", "The Mantis",   "Nashty", "Tasmanian Devil", "Tibau", "The Real Deal", "The Diamond",  "The Carny", "Junior", "The People's Warrior",  "The Menace", "Handsome", "Massaranduba", "El Cucuy",   "The Bull", "The Fireball Kid", "New Breed", "King", "Benny",  "The Notorious", "The Motown Phenom",   "Maverick", "Raging", "Tiger", "Killa", "The Eagle", "Tractor", "El Niño",  "The Super Saiyan", "Mad Dog", "Danger Zone", "Hollywood",   "Sergeant",   "Braveheart", "The Underground King", "Super",  "Bonecrusher",   "El Toro", "Beatdown", "Ragin", "From Hell", "The Maestro",   "Pacu", "Groovy", "Ill Will", "Excalibur", "The Gift", "The Bomber",   "The Saint", "All Day", "Capo", "The Carpenter", "Lil Heathen",  "The Prodigy", "The Answer", "Killer Cub", "The Bully",  "Money", "Showtime", "Blessed", "The Damage", "The Baron",   "The Fury", "The Scrapper", "The Zombie", "El Pantera", "The Hangman",  "T-City", "Pugnus", "Mr. Finland", "Moggly", "Warrior", "The Superboy",   "Yashabo", "Smasher", "The Hammer", "Strong", "Almighty", "El Fuerte",  "The Wizard", "Gritz", "The Gladiator", "Crash", "Hurricane",   "Guv Nor", "Barracuda", "Flash", "Dominator", "Hands of Stone",  "The Viper", "The Magician", "Kid Lightning", "Tank", "No Love",  "The Young Punisher", "Funk Master", "One Bad Mofo", "Diablito",  "Chito", "El Terror", "Psycho", "Mr. Perfect",   "Kid", "Teco", "Bure", "Enty", "Dangerous", "The Warrior",  "Holds It Down", "Ninja", "The Animal", "Cool Hand", "The Pikey", "The Sensation", "Firekid", "The Beefcake", "Mighty Mouse",  "Uncle Creepy", "Da Last Samurai", "The Messenger", "Baby Face", "The Assassin Baby", "Kid Alex",  "Da Demolition Man", "The Cannibal",  "Danger", "The Monkey God", "The Assassin")
	Quit ..Sample(nick)
}

/*
ClassMethod Country()
{
	Quit ..Sample($ListBuild("GBR", "USA", "BRA", "NED", "JAM", "AUS", "CUB", "POL", "CAN", "SWE", "ZAF", "NGR", "ITA", "WAL", "KOR", "ISL", "BEL", "ARG", "RUS", "GER", "JPN", "FRA", "DOM", "AFG", "SER", "MEX", "GH", "NOR", "ENG", "IRE", "IRN", "GUM", "AUT", "SCT", "FIN", "BIH", "PER", "NZL", "CHN","CHL", "ECU", "LAO", "PHL"))
}
//*/
/// (145 lb, 65 kg)
ClassMethod Featherweight(ByRef pCountry As %String = "") As %String
{
	Set countries = $ListBuild("USA","BRA","KOR","RUS","CHL","PER","MEX","GER","JPN","ENG","GBR","CHN","IRE","FIN","BIH","NZL"), 
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
	Do fighters.SetAt($ListBuild("Clay Guida", "Jeremy Stephens", "BJ Penn", "Frankie Edgar", "Cub Swanson", "Gray Maynard", "Ricardo Lamas", "Chad Mendes", "Anthony Pettis", "Max Holloway", "Darren Elkins", "Alex Caceres", "Dennis Bermudez", "Sam Sicilia", "Myles Jury", "Chas Skelly", "Jimy Hettes", "Mike De La Torre", "Brian Ortega", "Jason Knight", "Charles Rosa", "Ryan Hall", "Chris Gruetzemacher", "Rick Glenn", "Kyle Bochniak", "Shane Burgos", "Jared Gordon"),"USA")
	Do fighters.SetAt($ListBuild("José Aldo", "Charles Oliveira", "Renan Barão", "Godofredo Pepey", "Rony Jason", "Hacran Dias", "Renato Moicano"),"BRA")
	Do fighters.SetAt($ListBuild("Jeremy Kennedy", "Gavin Tucker"),"CAN")
	Do fighters.SetAt($ListBuild("Chan Sung Jung", "Doo Ho Choi"),"KOR")
	Do fighters.SetAt($ListBuild("Zubaira Tukhugov", "Zabit Magomedsharipov"),"RUS")
	Do fighters.SetAt($ListBuild("Yair Rodriguez", "Gabriel Benitez"),"MEX")
	Do fighters.SetAt($ListBuild("Dennis Siver", "Martin Buschkamp"),"GER")
	Do fighters.SetAt($ListBuild("Mizuto Hirota", "Teruto Ishihara"),"JPN")
	Do fighters.SetAt($ListBuild("Ning Guangyou", "Guan Wang"),"CHN")
	Do fighters.SetAt($ListBuild("Alex Enlund"),"ENG")
	Do fighters.SetAt($ListBuild("Arnold Allen"),"GBR")
	Do fighters.SetAt($ListBuild("Diego Rivas"),"CHL")
	Do fighters.SetAt($ListBuild("Enrique Barzola"),"PER")
	Do fighters.SetAt($ListBuild("Artem Lobov"),"IRE")
	Do fighters.SetAt($ListBuild("Makwan Amirkhani"),"FIN")
	Do fighters.SetAt($ListBuild("Mirsad Bektic"),"BIH")
	Do fighters.SetAt($ListBuild("Dan Hooker"),"NZL")
	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (185 lb, 84 kg)
ClassMethod Middleweight(ByRef pCountry As %String = "") As %String
{
	Set countries = $ListBuild("GBR", "USA", "BRA", "NED", "JAM", "AUS", "CUB", "POL", "CAN", "SWE", "ZAF", "NGR", "ITA", "WAL"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Michael Bisping", "Bradley Scott", "Scott Askham"),"GBR")
 	Do fighters.SetAt($ListBuild("Nate Marquardt", "Johny Hendricks", "Tim Boetsch", "Rashad Evans", "Chris Camozzi", "CB Dollaway", "Kelvin Gastelum", "Derek Brunson", "Brad Tavares", "Chris Weidman", "Trevor Smith", "Sam Alvey", "Anthony Smith", "David Branch", "Jake Collier", "Eric Spicely", "Alex Nicholson", "Gerald Meerschaert", "Andrew Sanchez", "Keith Berish", "Luke Rockhold"),"USA")
 	Do fighters.SetAt($ListBuild("Vitor Belfort", "Anderson Silva", "Lyoto Machida", "Thales Leites", "Rafael Natal", "Ronaldo Souza", "Cezar Ferreira", "Thiago Santos", "Antônio Carlos Júnior", "Vitor Miranda", "Marcelo Guimarães", "Paulo Henrique Costa"),"BRA")
 	Do fighters.SetAt($ListBuild("Gegard Mousasi"),"NED")
 	Do fighters.SetAt($ListBuild("Uriah Hall"),"JAM")
 	Do fighters.SetAt($ListBuild("Robert Whittaker", "Dan Kelly"),"AUS")
 	Do fighters.SetAt($ListBuild("Yoel Romero", "Hector Lombard"),"CUB")
 	Do fighters.SetAt($ListBuild("Krzysztof Jotko"),"POL")
 	Do fighters.SetAt($ListBuild("Elias Theodorou", "Ryan Janes"),"CAN")
 	Do fighters.SetAt($ListBuild("Magnus Cedenblad", "Jack Hermansson"),"SWE")
 	Do fighters.SetAt($ListBuild("Garreth McLellan"),"ZAF")
 	Do fighters.SetAt($ListBuild("Oluwale Bamgbose"),"NGR")
 	Do fighters.SetAt($ListBuild("Alessio Di Chirico", "Marvin Vettori"),"ITA")
 	Do fighters.SetAt($ListBuild("Jack Marshman"),"WAL")
 	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (170 lb, 77 kg)
ClassMethod Welterweight(ByRef pCountry As %String = "") As %String
{
	Set countries = $ListBuild("GBR", "USA", "BRA", "JAM", "AUS", "CAN", "SWE", "NGR", "KOR", "ISL", "BEL", "ARG", "RUS", "GER", "JPN", "FRA", "DOM", "AFG", "SER", "MEX", "GH", "NOR", "ENG", "IRE"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Dan Hardy", "John Hathaway", "Leon Edwards", "Tom Breese", "Danny Roberts", "Darren Till"),"GBR")
 	Do fighters.SetAt($ListBuild("Donald Cerrone", "Matt Brown", "Robbie Lawler", "Carlos Condit", "Jake Ellenberger", "Mike Pyle", "Neil Magny", "Jorge Masvidal", "Tyron Woodley", "Tim Means", "Ben Saunders", "Court McGee", "Stephen Thompson", "Yancy Medeiros", "Alan Jouban", "Colby Covington", "Ryan LaFlare", "Zak Cummings", "Sean Strickland", "George Sullivan", "Belal Muhammad", "Dominique Steele", "Mickey Gall", "Michael Graves", "Mike Perry", "Alex Morono", "Niko Price", "Nathan Coy", "Max Griffin", "Zak Ottow", "Lyman Good", "CM Punk", "Sabah Homasi", "Brian Camozzi", "Bobby Nash"),"USA")
 	Do fighters.SetAt($ListBuild("Demian Maia", "Erick Silva", "Roan Carneiro", "Alex Oliveira", "Sérgio Moraes", "Warlley Alves", "Vicente Luque", "Viscardi Andrade", "Alberto Mina", "Elizeu Zaleski dos Santos", "Cláudio Silva", "Antônio Braga Neto", "Luan Chagas", "Davi Ramos"),"BRA")
 	Do fighters.SetAt($ListBuild("Randy Brown"),"JAM")
 	Do fighters.SetAt($ListBuild("Richard Walsh"),"AUS")
 	Do fighters.SetAt($ListBuild("Georges St-Pierre", "Patrick C", "Chad Laprise", "Jordan Mein", "Sheldon Westcott", "Jonathan Meunier"),"CAN")
 	Do fighters.SetAt($ListBuild("Nico Musoke"),"SWE")
 	Do fighters.SetAt($ListBuild("Kamaru Usman"),"NGR")
 	Do fighters.SetAt($ListBuild("Dong Hyun Kim", "Hyun Gyu Lim"),"KOR")
 	Do fighters.SetAt($ListBuild("Gunnar Nelson"),"ISL")
 	Do fighters.SetAt($ListBuild("Tarec Saffiedine"),"BEL")
 	Do fighters.SetAt($ListBuild("Santiago Ponzinibbio"),"ARG")
 	Do fighters.SetAt($ListBuild("Omari Akhmedov", "Alexander Yakovlev", "Sultan Aliev"),"RUS")
 	Do fighters.SetAt($ListBuild("Peter Sobotta", "Jessin Ayari"),"GER")
 	Do fighters.SetAt($ListBuild("Yoshihiro Akiyama", "Keita Nakamura", "Kiichi Kunimoto", "Shinsho Anzai"),"JPN")
 	Do fighters.SetAt($ListBuild("Nordine Taleb"),"FRA")
 	Do fighters.SetAt($ListBuild("Alex Garcia"),"DOM")
 	Do fighters.SetAt($ListBuild("Siyar Bahadurzada"),"AFG")
 	Do fighters.SetAt($ListBuild("Bojan Velickovic"),"SER")
 	Do fighters.SetAt($ListBuild("Alvaro Herrera"),"MEX")
 	Do fighters.SetAt($ListBuild("Abdul Razak Alhassan"),"GH")
 	Do fighters.SetAt($ListBuild("Emil Weber Meek"),"NOR")
 	Do fighters.SetAt($ListBuild("Jim Wallhead"),"ENG")
 	Do fighters.SetAt($ListBuild("Charlie Ward"),"IRE")
	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (155 lb, 70 kg)
ClassMethod Lightweight(ByRef pCountry As %String = "") As %String
{
	Set countries = $ListBuild("GBR", "USA", "BRA", "AUS", "POL", "CAN", "SWE", "KOR", "RUS", "GER", "JPN", "MEX", "ENG", "IRE", "IRN", "GUM", "AUT", "SCT", "FIN", "BIH", "PER"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Ross Pearson"),"GBR")
 	Do fighters.SetAt($ListBuild("Jim Miller", "Diego Sanchez", "Nate Diaz", "Joe Lauzon", "Dustin Poirier", "Nik Lentz", "Evan Dunham", "Josh Burkman", "Michael Johnson", "Matt Wiman", "Tony Ferguson", "Erik Koch", "Bobby Green", "Kevin Lee", "Michael Chiesa", "Al Iaquinta", "Abel Trujillo", "James Krause", "Gilbert Melendez", "James Vick", "Paul Felder", "Joe Proctor", "Drew Dober", "Chris Wade", "Tony Martin", "Johnny Case", "Eddie Alvarez", "Bryan Barberena", "Sage Northcutt", "Alex White", "Scott Holtzman", "Andrew Holbrook", "Vinc Pichel", "Frankie Perez", "Lando Vannata", "Josh Emmett", "Will Brooks", "Joe Ellenberger", "Jason Gonzaléz", "Gregor Gillespie", "Drakkar Klose", "Darrell Horcher", "Michael McBride", "Jordan Rinaldi", "Devin Powell", "Michel Quinones", "Desmond Green"),"USA")
 	Do fighters.SetAt($ListBuild("Gleison Tibau", "Rafael dos Anjos", "Thiago Alves", "Edson Barboza", "Francisco Trinaldo", "Michel Prazeres", "Adriano Martins", "Leonardo Santos", "Gilbert Burns", "Alan Patrick", "Carlos Diego Ferreira", "Joaquim Silva", "Felipe Silva"),"BRA")
 	Do fighters.SetAt($ListBuild("Jake Matthews", "Damien Brown", "Alexander Volkanovski"),"AUS")
 	Do fighters.SetAt($ListBuild("Marcin Held"),"POL")
 	Do fighters.SetAt($ListBuild("John Makdessi", "TJ Grant", "Olivier Aubin-Mercier", "Mitch Clarke", "Jason Saggo", "Kajan Johnson", "Alessandro Ricci"),"CAN")
 	Do fighters.SetAt($ListBuild("David Teymur"),"SWE")
 	Do fighters.SetAt($ListBuild("Tae Hyun Bang", "Dong Hyun Kim"),"KOR")
 	Do fighters.SetAt($ListBuild("Rustam Khabilov", "Khabib Nurmagomedov", "Rashid Magomedov", "Islam Makhachev", "Magomed Mustafaev"),"RUS")
 	Do fighters.SetAt($ListBuild("Nick Hein"),"GER")
 	Do fighters.SetAt($ListBuild("Takanori Gomi"),"JPN")
 	Do fighters.SetAt($ListBuild("Marco Polo Reyes", "Martin Bravo"),"MEX")
 	Do fighters.SetAt($ListBuild("Marc Diakiese"),"ENG")
 	Do fighters.SetAt($ListBuild("Conor McGregor (C)", "Joseph Duffy"),"IRE")
 	Do fighters.SetAt($ListBuild("Beneil Dariush", "Reza Madadi"),"IRN")
 	Do fighters.SetAt($ListBuild("Jon Tuck"),"GUM")
 	Do fighters.SetAt($ListBuild("Mairbek Taisumov"),"AUT")
 	Do fighters.SetAt($ListBuild("Stevie Ray"),"SCT")
 	Do fighters.SetAt($ListBuild("Teemu Packalén"),"FIN")
 	Do fighters.SetAt($ListBuild("Damir Had?vic"),"BIH")
 	Do fighters.SetAt($ListBuild("Claudio Puelles"),"PER")
 	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (135 lb, 61 kg)
ClassMethod Bantamweight(ByRef pCountry As %String = "") As %String
{
	Set countries = $ListBuild("GBR", "USA", "BRA", "POL", "CAN", "WAL", "KOR", "ARG", "JPN", "FRA", "MEX", "ECU", "LAO"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Ian Entwistle", "David Grant"),"GBR")
 	Do fighters.SetAt($ListBuild("Eddie Wineland", "Dominick Cruz", "TJ Dillashaw", "John Dodson", "Bryan Caraway", "Justin Scoggins", "Cody Garbrandt", "Frankie Saenz", "Russell Doane", "Aljamain Sterling", "Joe Soto", "Jimmie Rivera", "Rob Font", "Albert Morales", "Chris Holdsworth", "Patrick Williams", "Luke Sanders", "Matthew Lopez"),"USA")
 	Do fighters.SetAt($ListBuild("Rani Yahya", "Raphael Assunção", "Iuri Alcântara", "John Lineker", "Felipe Arantes", "Thomas Almeida", "Pedro Munhoz", "Johnny Eduardo", "Douglas Silva de Andrade", "Reginaldo Vieira", "Augusto Mendes", "Ricardo Ramos"),"BRA")
 	Do fighters.SetAt($ListBuild("Damian Stasiak"),"POL")
 	Do fighters.SetAt($ListBuild("Mitch Gagnon", "Aiemann Zahabi"),"CAN")
 	Do fighters.SetAt($ListBuild("Brett Johns"),"WAL")
 	Do fighters.SetAt($ListBuild("Kyung Ho Kang", "Kwan Ho Kwak"),"KOR")
 	Do fighters.SetAt($ListBuild("Guido Cannetti"),"ARG")
 	Do fighters.SetAt($ListBuild("Michinori Tanaka", "Norifumi Yamamoto"),"JPN")
 	Do fighters.SetAt($ListBuild("Tom Duquesnoy"),"FRA")
 	Do fighters.SetAt($ListBuild("Alejandro Pérez", "Marco Beltrán", "José Quiñónez", "Henry Briones"),"MEX")
 	Do fighters.SetAt($ListBuild("Marlon Vera"),"ECU")
 	Do fighters.SetAt($ListBuild("Andre Soukhamthath"),"LAO")
 	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (125 lb, 56 kg)
ClassMethod Flyweight(ByRef pCountry As %String = "") As %String
{
	
	Set countries = $ListBuild("USA", "BRA", "AUS", "RUS", "JPN", "MEX", "IRE", "PHL"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
	Do fighters.SetAt($ListBuild("Joseph Benavidez", "Demetrious Johnson", "John Moraga", "Ian McCall", "Dustin Ortiz", "Sergio Pettis", "Louis Smolka", "Ray Borg", "Tim Elliott", "Henry Cejudo", "Ben Nguyen", "Ryan Benoit", "Eric Shelton", "Matt Schnell", "Jarred Brooks"),"USA")
 	Do fighters.SetAt($ListBuild("Jussier Formiga", "Wilson Reis", "Matheus Nicolau", "Alexandre Pantoja", "Deiveson Alcântara"),"BRA")
 	Do fighters.SetAt($ListBuild("Askhan Mokhtarian"),"AUS")
 	Do fighters.SetAt($ListBuild("Magomed Bibulatov"),"RUS")
 	Do fighters.SetAt($ListBuild("Ulka Sasaki"),"JPN")
 	Do fighters.SetAt($ListBuild("Brandon Moreno", "Hector Sandoval"),"MEX")
 	Do fighters.SetAt($ListBuild("Neil Seery"),"IRE")
 	Do fighters.SetAt($ListBuild("Jenel Lausa"),"PHL")
	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (265 lb, 120 kg)
ClassMethod Heavyweight(ByRef pCountry As %String = "") As %String
{
	
	Set countries = $ListBuild("USA", "BRA", "NED", "AUS", "POL", "RUS", "FRA", "MEX", "ENG", "NZL", "BLR", "CMR", "DNK", "SYR", "UKR"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Frank Mir", "Roy Nelson", "Travis Browne", "Josh Barnett", "Stipe Miocic", "Derrick Lewis", "Ben Rothwell", "Anthony Hamilton", "Walt Harris", "Todd Duffee", "Timothy Johnson", "Justin Ledet", "Curtis Blaydes", "Adam Milstead", "Chris De La Rocha", "Chase Sherman", "Daniel Spitz", "Justin Willis"),"USA")
 	Do fighters.SetAt($ListBuild("Junior Dos Santos", "Fabrício Werdum", "Luis Henrique", "Marcel Fortuna"),"BRA")
 	Do fighters.SetAt($ListBuild("Stefan Struve", "Alistair Overeem"),"NED")
 	Do fighters.SetAt($ListBuild("Tai Tuivasa"),"AUS")
 	Do fighters.SetAt($ListBuild("Daniel Omielanczuk", "Marcin Tybura", "Damian Grabowski", "Adam Wieczorek"),"POL")
 	Do fighters.SetAt($ListBuild("Oleksiy Oliynyk", "Shamil Abdurakhimov", "Ruslan Magomedov", "Dmitrii Smolyakov", "Alexander Volkov", "Bilyal Makhov", "Dmitriy Sosnovskiy"),"RUS")
 	Do fighters.SetAt($ListBuild("Cyril Asker"),"FRA")
 	Do fighters.SetAt($ListBuild("Cain Velasquez"),"MEX")
 	Do fighters.SetAt($ListBuild("Mark Godbeer"),"ENG")
 	Do fighters.SetAt($ListBuild("Mark Hunt"),"NZL")
 	Do fighters.SetAt($ListBuild("Andrei Arlovski"),"BLR")
 	Do fighters.SetAt($ListBuild("Francis Ngannou"),"CMR")
 	Do fighters.SetAt($ListBuild("Christian Colombo"),"DNK")
 	Do fighters.SetAt($ListBuild("Jarjis Danho"),"SYR")
 	Do fighters.SetAt($ListBuild("Dmitry Poberezhets"),"UKR")
	
	Quit ..Sample(fighters.GetAt(pCountry))
}

/// (205 lb, 93 kg)
ClassMethod LightHeavyweight(ByRef pCountry As %String = "") As %String
{
	
	Set countries = $ListBuild("GBR", "USA", "BRA", "AUS", "POL", "CAN", "SWE", "WAL", "RUS", "SER", "ENG", "AUT", "SCT", "HTI", "HRV", "LVA", "MDA", "DNK", "CHE"),
		fighters = ##class(%ArrayOfDataTypes).%New()
	
	Set:pCountry="" pCountry = ..Sample(countries)	
	
 	Do fighters.SetAt($ListBuild("Jimi Manuwa"),"GBR")
 	Do fighters.SetAt($ListBuild("Ed Herman", "Anthony Johnson", "Jon Jones", "Gian Villante", "Daniel Cormier (C)", "Tom Lawlor", "Corey Anderson", "Patrick Cummins", "Jared Cannonier", "Jonathan Wilson", "Khalil Rountree", "Devin Clark", "Josh Stansbury", "Daniel Jolly", "Jordan Johnson", "Jeremy Kimball"),"USA")
 	Do fighters.SetAt($ListBuild("Maurício Rua", "Glover Teixeira", "Antônio Rogério Nogueira", "Francimar Barroso", "Marcos Rogério de Lima", "Henrique da Silva"),"BRA")
 	Do fighters.SetAt($ListBuild("Tyson Pedro"),"AUS")
 	Do fighters.SetAt($ListBuild("Jan Blachowicz"),"POL")
 	Do fighters.SetAt($ListBuild("Steve Bossé"),"CAN")
 	Do fighters.SetAt($ListBuild("Alexander Gustafsson", "Ilir Latifi"),"SWE")
 	Do fighters.SetAt($ListBuild("John Phillips"),"WAL")
 	Do fighters.SetAt($ListBuild("Gadzhimurad Antigulov", "Saparbek Safarov", "Abdul-Kerim Edilov"),"RUS")
 	Do fighters.SetAt($ListBuild("Bojan Mihajlovic"),"SER")
 	Do fighters.SetAt($ListBuild("Darren Stewart"),"ENG")
 	Do fighters.SetAt($ListBuild("Aleksandar Rakic"),"AUT")
 	Do fighters.SetAt($ListBuild("Paul Craig"),"SCT")
 	Do fighters.SetAt($ListBuild("Ovince Saint Preux"),"HTI")
 	Do fighters.SetAt($ListBuild("Igor Pokrajac"),"HRV")
 	Do fighters.SetAt($ListBuild("Misha Cirkunov"),"LVA")
 	Do fighters.SetAt($ListBuild("Ion Cutelaba"),"MDA")
 	Do fighters.SetAt($ListBuild("Joachim Christensen"),"DNK")
 	Do fighters.SetAt($ListBuild("Volkan Oezdemir"),"CHE")
 	
	Quit ..Sample(fighters.GetAt(pCountry))
}

}

