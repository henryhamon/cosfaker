Class cosFaker.Data.PtBr Extends %RegisteredObject
{

ClassMethod AppAction(pGroup = "") As %String
{
	S:pGroup="" pGroup = $ListGet($ListFromString("SQL,IF,FUN",","),$Random(3)+1)
	
	If pGroup = "SQL" {
		Set $List(actions,*+1) = "Buscar"
		Set $List(actions,*+1) = "Resultados"
		Set $List(actions,*+1) = "Persistir"
		Set $List(actions,*+1) = "Acessar"
		Set $List(actions,*+1) = "Integrar"
		Set $List(actions,*+1) = "Totalizar"
		Set $List(actions,*+1) = "Contar"
		Set $List(actions,*+1) = "Virtualizar"
		Set $List(actions,*+1) = "Consultar"
		Set $List(actions,*+1) = "Verificar"
		Set $List(actions,*+1) = "Gerar"

	}
	
	If pGroup = "IF" {
		Set $List(actions,*+1) = "Comparar"
		Set $List(actions,*+1) = "Verificar"
		Set $List(actions,*+1) = "Habilitar"
		Set $List(actions,*+1) = "Validar"
	}
	
	If pGroup = "FUN" {
		Set $List(actions,*+1) = "Calcular"
		Set $List(actions,*+1) = "Analisar"
		Set $List(actions,*+1) = "Executar"
		Set $List(actions,*+1) = "Atribuir"
		Set $List(actions,*+1) = "Gerar"
		Set $List(actions,*+1) = "Totalizar"

	}
	
		; S $List(actions,*+1) = ""
		
	Set output = $ListGet(actions,$Random($ListLength(actions)) + 1)
	Kill actions
	Quit output
}

ClassMethod AppType() As %String
{
	Set $List(things,*+1) = "ICMS"
	Set $List(things,*+1) = "Imposto"
	Set $List(things,*+1) = "Nota Fiscal"
	Set $List(things,*+1) = "Renda"
	Set $List(things,*+1) = "Venda"
	Set $List(things,*+1) = "Itens"
	Set $List(things,*+1) = "Loja"
	Set $List(things,*+1) = "Vendedor"
	Set $List(things,*+1) = "Produtos"
	Set $List(things,*+1) = "Região"
	Set $List(things,*+1) = "Localização"
	Set $List(things,*+1) = "Preços"
	;S $List(things,*+1) = ""
	
	Set output = $ListGet(things,$Random($ListLength(things)) + 1)
	Kill things
	Quit output
}

ClassMethod AppName() As %String
{
  	Set $List(appNames,*+1) = "Redhold"
  	Set $List(appNames,*+1) = "Treeflex"
  	Set $List(appNames,*+1) = "Trippledex"
  	Set $List(appNames,*+1) = "Kanlam"
  	Set $List(appNames,*+1) = "Bigtax"
  	Set $List(appNames,*+1) = "Daltfresh"
  	Set $List(appNames,*+1) = "Toughjoyfax"
  	Set $List(appNames,*+1) = "Mat Lam Tam"
  	Set $List(appNames,*+1) = "Otcom"
  	Set $List(appNames,*+1) = "Tres-Zap"
  	Set $List(appNames,*+1) = "Y-Solowarm"
  	Set $List(appNames,*+1) = "Tresom"
  	Set $List(appNames,*+1) = "Voltsillam"
  	Set $List(appNames,*+1) = "Biodex"
  	Set $List(appNames,*+1) = "Greenlam"
  	Set $List(appNames,*+1) = "Viva"
  	Set $List(appNames,*+1) = "Matsoft"
  	Set $List(appNames,*+1) = "Temp"
  	Set $List(appNames,*+1) = "Zoolab"
  	Set $List(appNames,*+1) = "Subin"
  	Set $List(appNames,*+1) = "Rank"
  	Set $List(appNames,*+1) = "Job"
  	Set $List(appNames,*+1) = "Stringtough"
  	Set $List(appNames,*+1) = "Tin"
  	Set $List(appNames,*+1) = "It"
  	Set $List(appNames,*+1) = "Home Ing"
  	Set $List(appNames,*+1) = "Zamit"
  	Set $List(appNames,*+1) = "Sonsing"
  	Set $List(appNames,*+1) = "Konklab"
  	Set $List(appNames,*+1) = "Alpha"
  	Set $List(appNames,*+1) = "Latlux"
  	Set $List(appNames,*+1) = "Voyatouch"
  	Set $List(appNames,*+1) = "Alphazap"
  	Set $List(appNames,*+1) = "Holdlamis"
  	Set $List(appNames,*+1) = "Zaam-Dox"
  	Set $List(appNames,*+1) = "Sub-Ex"
  	Set $List(appNames,*+1) = "Quo Lux"
  	Set $List(appNames,*+1) = "Bamity"
  	Set $List(appNames,*+1) = "Ventosanzap"
  	Set $List(appNames,*+1) = "Lotstring"
  	Set $List(appNames,*+1) = "Hatity"
  	Set $List(appNames,*+1) = "Tempsoft"
  	Set $List(appNames,*+1) = "Overhold"
  	Set $List(appNames,*+1) = "Fixflex"
  	Set $List(appNames,*+1) = "Konklux"
  	Set $List(appNames,*+1) = "Zontrax"
  	Set $List(appNames,*+1) = "Tampflex"
  	Set $List(appNames,*+1) = "Span"
  	Set $List(appNames,*+1) = "Namfix"
  	Set $List(appNames,*+1) = "Transcof"
  	Set $List(appNames,*+1) = "Stim"
  	Set $List(appNames,*+1) = "Fix San"
  	Set $List(appNames,*+1) = "Sonair"
  	Set $List(appNames,*+1) = "Stronghold"
  	Set $List(appNames,*+1) = "Fintone"
  	Set $List(appNames,*+1) = "Y-find"
  	Set $List(appNames,*+1) = "Opela"
  	Set $List(appNames,*+1) = "Lotlux"
  	Set $List(appNames,*+1) = "Ronstring"
  	Set $List(appNames,*+1) = "Zathin"
  	Set $List(appNames,*+1) = "Duobam"
  	Set $List(appNames,*+1) = "Keylex"
  	Set $List(appNames,*+1) = "Andalax"
  	Set $List(appNames,*+1) = "Solarbreeze"
  	Set $List(appNames,*+1) = "Cookley"
  	Set $List(appNames,*+1) = "Vagram"
  	Set $List(appNames,*+1) = "Aerified"
  	Set $List(appNames,*+1) = "Pannier"
  	Set $List(appNames,*+1) = "Asoka"
  	Set $List(appNames,*+1) = "Regrant"
  	Set $List(appNames,*+1) = "Wrapsafe"
  	Set $List(appNames,*+1) = "Prodder"
  	Set $List(appNames,*+1) = "Bytecard"
  	Set $List(appNames,*+1) = "Bitchip"
  	Set $List(appNames,*+1) = "Veribet"
  	Set $List(appNames,*+1) = "Gembucket"
  	Set $List(appNames,*+1) = "Cardguard"
  	Set $List(appNames,*+1) = "Bitwolf"
  	Set $List(appNames,*+1) = "Cardify"
  	Set $List(appNames,*+1) = "Domainer"
  	Set $List(appNames,*+1) = "Flowdesk"
  	Set $List(appNames,*+1) = "Flexidy"
		
	Set output = $ListGet(appNames,$Random($ListLength(appNames)) + 1)
        ; ["ability"S $List(appNames,*+1) = "access"S $List(appNames,*+1) = "adapter"S $List(appNames,*+1) = "algorithm"S $List(appNames,*+1) = "alliance"S $List(appNames,*+1) = "analyzer"S $List(appNames,*+1) = "application"S $List(appNames,*+1) = "approach"S $List(appNames,*+1) = "architecture"S $List(appNames,*+1) = "archive"S $List(appNames,*+1) = "artificial intelligence"S $List(appNames,*+1) = "array"S $List(appNames,*+1) = "attitude"S $List(appNames,*+1) = "benchmark"S $List(appNames,*+1) = "budgetary management"S $List(appNames,*+1) = "capability"S $List(appNames,*+1) = "capacity"S $List(appNames,*+1) = "challenge"S $List(appNames,*+1) = "circuit"S $List(appNames,*+1) = "collaboration"S $List(appNames,*+1) = "complexity"S $List(appNames,*+1) = "concept"S $List(appNames,*+1) = "conglomeration"S $List(appNames,*+1) = "contingency"S $List(appNames,*+1) = "core"S $List(appNames,*+1) = "customer loyalty"S $List(appNames,*+1) = "database"S $List(appNames,*+1) = "data-warehouse"S $List(appNames,*+1) = "definition"S $List(appNames,*+1) = "emulation"S $List(appNames,*+1) = "encoding"S $List(appNames,*+1) = "encryption"S $List(appNames,*+1) = "extranet"S $List(appNames,*+1) = "firmware"S $List(appNames,*+1) = "flexibility"S $List(appNames,*+1) = "focus group"S $List(appNames,*+1) = "forecast"S $List(appNames,*+1) = "frame"S $List(appNames,*+1) = "framework"S $List(appNames,*+1) = "function"S $List(appNames,*+1) = "functionalities"S $List(appNames,*+1) = "Graphic Interface"S $List(appNames,*+1) = "groupware"S $List(appNames,*+1) = "Graphical User Interface"S $List(appNames,*+1) = "hardware"S $List(appNames,*+1) = "help-desk"S $List(appNames,*+1) = "hierarchy"S $List(appNames,*+1) = "hub"S $List(appNames,*+1) = "implementation"S $List(appNames,*+1) = "info-mediaries"S $List(appNames,*+1) = "infrastructure"S $List(appNames,*+1) = "initiative"S $List(appNames,*+1) = "installation"S $List(appNames,*+1) = "instruction set"S $List(appNames,*+1) = "interface"S $List(appNames,*+1) = "internet solution"S $List(appNames,*+1) = "intranet"S $List(appNames,*+1) = "knowledge user"S $List(appNames,*+1) = "knowledge base"S $List(appNames,*+1) = "local area network"S $List(appNames,*+1) = "leverage"S $List(appNames,*+1) = "matrices"S $List(appNames,*+1) = "matrix"S $List(appNames,*+1) = "methodology"S $List(appNames,*+1) = "middleware"S $List(appNames,*+1) = "migration"S $List(appNames,*+1) = "model"S $List(appNames,*+1) = "moderator"S $List(appNames,*+1) = "monitoring"S $List(appNames,*+1) = "moratorium"S $List(appNames,*+1) = "neural-net"S $List(appNames,*+1) = "open architecture"S $List(appNames,*+1) = "open system"S $List(appNames,*+1) = "orchestration"S $List(appNames,*+1) = "paradigm"S $List(appNames,*+1) = "parallelism"S $List(appNames,*+1) = "policy"S $List(appNames,*+1) = "portal"S $List(appNames,*+1) = "pricing structure"S $List(appNames,*+1) = "process improvement"S $List(appNames,*+1) = "product"S $List(appNames,*+1) = "productivity"S $List(appNames,*+1) = "project"S $List(appNames,*+1) = "projection"S $List(appNames,*+1) = "protocol"S $List(appNames,*+1) = "secured line"S $List(appNames,*+1) = "service-desk"S $List(appNames,*+1) = "software"S $List(appNames,*+1) = "solution"S $List(appNames,*+1) = "standardization"S $List(appNames,*+1) = "strategy"S $List(appNames,*+1) = "structure"S $List(appNames,*+1) = "success"S $List(appNames,*+1) = "superstructure"S $List(appNames,*+1) = "support"S $List(appNames,*+1) = "synergy"S $List(appNames,*+1) = "system engine"S $List(appNames,*+1) = "task-force"S $List(appNames,*+1) = "throughput"S $List(appNames,*+1) = "time-frame"S $List(appNames,*+1) = "toolset"S $List(appNames,*+1) = "utilisation"S $List(appNames,*+1) = "website"S $List(appNames,*+1) = "workforce"]
	
	Kill appNames
	Quit output
}

ClassMethod LastName() As %String
{
	Set $List(lastName, *+1) = "Silva"
	Set $List(lastName, *+1) = "Souza"
	Set $List(lastName, *+1) = "Carvalho"
	Set $List(lastName, *+1) = "Santos"
	Set $List(lastName, *+1) = "Reis"
	Set $List(lastName, *+1) = "Xavier"
	Set $List(lastName, *+1) = "Franco"
	Set $List(lastName, *+1) = "Braga"
	Set $List(lastName, *+1) = "Macedo"
	Set $List(lastName, *+1) = "Batista"
	Set $List(lastName, *+1) = "Barreto"
	Set $List(lastName, *+1) = "Barros"
	Set $List(lastName, *+1) = "Moraes"
	Set $List(lastName, *+1) = "Malta"
	Set $List(lastName, *+1) = "Carmello"
	Set $List(lastName, *+1) = "Mengga"
	Set $List(lastName, *+1) = "Costa"
	Set $List(lastName, *+1) = "Rodrigues"
	Set $List(lastName, *+1) = "Pereira"
	Set $List(lastName, *+1) = "Melo"
	Set $List(lastName, *+1) = "Saraiva"
	Set $List(lastName, *+1) = "Nogueira"
	Set $List(lastName, *+1) = "Oliveira"
	Set $List(lastName, *+1) = "Martins"
	Set $List(lastName, *+1) = "Moreira"
	Set $List(lastName, *+1) = "Lima"
	Set $List(lastName, *+1) = "Vaz"
	Set $List(lastName, *+1) = "Albuquerque"
    Set $List(lastName, *+1) = "Almeida"
    Set $List(lastName, *+1) = "Alves"
    Set $List(lastName, *+1) = "Aragão"
    Set $List(lastName, *+1) = "Araújo"
    Set $List(lastName, *+1) = "Barbosa"
    Set $List(lastName, *+1) = "Brito"
    Set $List(lastName, *+1) = "Caldeira"
    Set $List(lastName, *+1) = "Campos"
    Set $List(lastName, *+1) = "Cardoso"
    Set $List(lastName, *+1) = "Cardoso"
    Set $List(lastName, *+1) = "Carvalho"
    Set $List(lastName, *+1) = "Castro"
    Set $List(lastName, *+1) = "Cavalcante"
    Set $List(lastName, *+1) = "Cavalcanti"
    Set $List(lastName, *+1) = "da Conceição"
    Set $List(lastName, *+1) = "da Costa"
    Set $List(lastName, *+1) = "da Cruz"
    Set $List(lastName, *+1) = "da Cunha"
    Set $List(lastName, *+1) = "da Luz"
    Set $List(lastName, *+1) = "da Mata"
    Set $List(lastName, *+1) = "da Mota"
    Set $List(lastName, *+1) = "da Paz"
    Set $List(lastName, *+1) = "da Rocha"
    Set $List(lastName, *+1) = "da Rosa"
    Set $List(lastName, *+1) = "das Neves"
    Set $List(lastName, *+1) = "Dias"
    Set $List(lastName, *+1) = "Duarte"
    Set $List(lastName, *+1) = "Farias"
    Set $List(lastName, *+1) = "Fernandes"
    Set $List(lastName, *+1) = "Ferreira"
    Set $List(lastName, *+1) = "Fogaça"
    Set $List(lastName, *+1) = "Freitas"
    Set $List(lastName, *+1) = "Gomes"
    Set $List(lastName, *+1) = "Gonçalves"
    Set $List(lastName, *+1) = "Lopes"
    Set $List(lastName, *+1) = "Mendes"
    Set $List(lastName, *+1) = "Monteiro"
    Set $List(lastName, *+1) = "Moura"
    Set $List(lastName, *+1) = "Nascimento"
    Set $List(lastName, *+1) = "Novaes"
    Set $List(lastName, *+1) = "Nunes"
    Set $List(lastName, *+1) = "Peixoto"
    Set $List(lastName, *+1) = "Pinheiro"
    Set $List(lastName, *+1) = "Pires"
    Set $List(lastName, *+1) = "Porto"
    Set $List(lastName, *+1) = "Ramos"
    Set $List(lastName, *+1) = "Rezende"
    Set $List(lastName, *+1) = "Ribeiro"
    Set $List(lastName, *+1) = "Rocha"
    Set $List(lastName, *+1) = "Sales"
    Set $List(lastName, *+1) = "Silveira"
    Set $List(lastName, *+1) = "Teixeira"
    Set $List(lastName, *+1) = "Viana"
    Set $List(lastName, *+1) = "Vieira"
	Set output = $ListGet(lastName,$Random($ListLength(lastName)) + 1)
	Kill lastName
	Quit output
}

ClassMethod PersonSuffix() As %String
{
	Set $List(PersonSuffix, *+1) = "Jr."
  	Set $List(PersonSuffix, *+1) = "Neto"
	Set $List(PersonSuffix, *+1) = "Filho"
	Set output = $ListGet(PersonSuffix,$Random($ListLength(PersonSuffix)) + 1)
	Kill PersonSuffix
	Quit output
}

ClassMethod CompanySuffix() As %String
{
	Set $List(CompanySuffix, *+1) = "EIRELI"
	Set $List(CompanySuffix, *+1) = "S.A."
	Set $List(CompanySuffix, *+1) = "LTDA"
	Set $List(CompanySuffix, *+1) = "e Associados"
	Set $List(CompanySuffix, *+1) = "Comércio"
	Set $List(CompanySuffix, *+1) = "Tecnologia"
	Set output = $ListGet(CompanySuffix,$Random($ListLength(CompanySuffix)) + 1)
	Kill CompanySuffix
	Quit output
}

ClassMethod DomainSuffix() As %String
{
	Set $List(domainSuffix, *+1) = "com"
  	Set $List(domainSuffix, *+1) = "biz"
  	Set $List(domainSuffix, *+1) = "info"
  	Set $List(domainSuffix, *+1) = "name"
  	Set $List(domainSuffix, *+1) = "net"
  	Set $List(domainSuffix, *+1) = "org"
	Set output = $ListGet(domainSuffix,$Random($ListLength(domainSuffix)) + 1)
	Kill domainSuffix
	Quit output
}

ClassMethod EmailProvider() As %String
{
	Set $List(freeEmailprovider, *+1) = "gmail.com"
  	Set $List(freeEmailprovider, *+1) = "yahoo.com"
	Set $List(freeEmailprovider, *+1) = "hotmail.com"
  	Set $List(freeEmailprovider, *+1) = "bol.com.br"
	Set output = $ListGet(freeEmailprovider,$Random($ListLength(freeEmailprovider)) + 1)
	Kill freeEmailprovider
	Quit output
}

ClassMethod FemaleFirstName() As %String
{
	Set $List(firstName, *+1) = "Alessandra"
	Set $List(firstName, *+1) = "Aline"
	Set $List(firstName, *+1) = "Bruna"
	Set $List(firstName, *+1) = "Carla"
	Set $List(firstName, *+1) = "Célia"
	Set $List(firstName, *+1) = "Cecília"
	Set $List(firstName, *+1) = "Dalila"
	Set $List(firstName, *+1) = "Eduarda"
	Set $List(firstName, *+1) = "Esther"
	Set $List(firstName, *+1) = "Fabrícia"
	Set $List(firstName, *+1) = "Felícia"
	Set $List(firstName, *+1) = "Fabiana"
	Set $List(firstName, *+1) = "Isabel"
	Set $List(firstName, *+1) = "Isabela"
	Set $List(firstName, *+1) = "Joana"
	Set $List(firstName, *+1) = "Graziela"
	Set $List(firstName, *+1) = "Júlia"
	Set $List(firstName, *+1) = "Janaína"
	Set $List(firstName, *+1) = "Karla"
	Set $List(firstName, *+1) = "Lorena"
	Set $List(firstName, *+1) = "Lorraine"
	Set $List(firstName, *+1) = "Larissa"
	Set $List(firstName, *+1) = "Meire"
	Set $List(firstName, *+1) = "Marcela"
	Set $List(firstName, *+1) = "Margarida"
	Set $List(firstName, *+1) = "Mércia"
	Set $List(firstName, *+1) = "Márcia"
	Set $List(firstName, *+1) = "Marli"
	Set $List(firstName, *+1) = "Morgana"
	Set $List(firstName, *+1) = "Maria"
	Set $List(firstName, *+1) = "Marta"
	Set $List(firstName, *+1) = "Natália"
	Set $List(firstName, *+1) = "Núbia"
	Set $List(firstName, *+1) = "Ofélia"
	Set $List(firstName, *+1) = "Paula"
	Set $List(firstName, *+1) = "Rafaelly"
	Set $List(firstName, *+1) = "Rafaela"
	Set $List(firstName, *+1) = "Roberta"
	Set $List(firstName, *+1) = "Sílvia"
	Set $List(firstName, *+1) = "Silvana"
	Set $List(firstName, *+1) = "Suélen"
	Set $List(firstName, *+1) = "Sara"
	Set $List(firstName, *+1) = "Talita"
	Set $List(firstName, *+1) = "Vanessa"
	Set $List(firstName, *+1) = "Vitória"
	Set output = $ListGet(firstName,$Random($ListLength(firstName)) + 1)
	Kill firstName
	Quit output
}

ClassMethod MaleFirstName() As %String
{
	Set $List(firstName, *+1) = "Alessandro"
	Set $List(firstName, *+1) = "Alexandre"
	Set $List(firstName, *+1) = "Antônio"
	Set $List(firstName, *+1) = "Breno"
	Set $List(firstName, *+1) = "Carlos"
	Set $List(firstName, *+1) = "César"
	Set $List(firstName, *+1) = "Danilo"
	Set $List(firstName, *+1) = "Deneval"
	Set $List(firstName, *+1) = "Eduardo"
	Set $List(firstName, *+1) = "Elísio"
	Set $List(firstName, *+1) = "Fábio"
	Set $List(firstName, *+1) = "Fabrício"
	Set $List(firstName, *+1) = "Félix"
	Set $List(firstName, *+1) = "Felipe"
	Set $List(firstName, *+1) = "Feliciano"
	Set $List(firstName, *+1) = "Frederico"
	Set $List(firstName, *+1) = "Fabiano"
	Set $List(firstName, *+1) = "Gustavo"
	Set $List(firstName, *+1) = "Guilherme"
	Set $List(firstName, *+1) = "Gúbio"
	Set $List(firstName, *+1) = "Heitor"
	Set $List(firstName, *+1) = "Hélio"
	Set $List(firstName, *+1) = "Henry"
	Set $List(firstName, *+1) = "Hugo"
	Set $List(firstName, *+1) = "Ígor"
	Set $List(firstName, *+1) = "João"
	Set $List(firstName, *+1) = "Josemar"
	Set $List(firstName, *+1) = "Júlio César"
	Set $List(firstName, *+1) = "Júlio"
	Set $List(firstName, *+1) = "Kléber"
	Set $List(firstName, *+1) = "Lucas"
	Set $List(firstName, *+1) = "Luiggi"
	Set $List(firstName, *+1) = "Leandro"
	Set $List(firstName, *+1) = "Leonardo"
	Set $List(firstName, *+1) = "Ladislau"
	Set $List(firstName, *+1) = "Marcos"
	Set $List(firstName, *+1) = "Marcelo"
	Set $List(firstName, *+1) = "Mario"
	Set $List(firstName, *+1) = "Norberto"
	Set $List(firstName, *+1) = "Nataniel"
	Set $List(firstName, *+1) = "Paulo"
	Set $List(firstName, *+1) = "Pablo"
	Set $List(firstName, *+1) = "Pedro"
	Set $List(firstName, *+1) = "Raul"
	Set $List(firstName, *+1) = "Rafael"
	Set $List(firstName, *+1) = "Ricardo"
	Set $List(firstName, *+1) = "Roberto"
	Set $List(firstName, *+1) = "Silas"
	Set $List(firstName, *+1) = "Salvador"
	Set $List(firstName, *+1) = "Sirineu"
	Set $List(firstName, *+1) = "Tertuliano"
	Set $List(firstName, *+1) = "Vicente"
	Set $List(firstName, *+1) = "Víctor"
	Set $List(firstName, *+1) = "Yango"
	Set $List(firstName, *+1) = "Yago"
	Set $List(firstName, *+1) = "Yuri"
	Set $List(firstName, *+1) = "Washington"
	Set $List(firstName, *+1) = "Warley"
	Set output = $ListGet(firstName,$Random($ListLength(firstName)) + 1)
	Kill firstName
	Quit output
}

}

