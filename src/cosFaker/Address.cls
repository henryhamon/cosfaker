Class cosFaker.Address Extends cosFaker.lib.braziliancities
{

/*

 @method faker.address.latitude

  this.latitude = function () {
      return (faker.random.number(180 * 10000) / 10000.0 - 90.0).toFixed(4);
  }
   * @method faker.address.longitude

  this.longitude = function () {
      return (faker.random.number(360 * 10000) / 10000.0 - 180.0).toFixed(4);
  }
   this.city = function (format) {
    var formats = [
      '{{address.cityPrefix}} {{name.firstName}}{{address.citySuffix}}',
      '{{address.cityPrefix}} {{name.firstName}}',
      '{{name.firstName}}{{address.citySuffix}}',
      '{{name.lastName}}{{address.citySuffix}}'
    ];

    if (typeof format !== "number") {
      format = faker.random.number(formats.length - 1);
    }

    return f(formats[format]);

  }

  **
   * Return a random localized city prefix
   * @method faker.address.cityPrefix
   *
  this.cityPrefix = function () {
    return faker.random.arrayElement(faker.definitions.address.city_prefix);
  }

  **
   * Return a random localized city suffix
   *
   * @method faker.address.citySuffix
   *
  this.citySuffix = function () {
    return faker.random.arrayElement(faker.definitions.address.city_suffix);
  }

  **
   * Returns a random localized street name
   *
   * @method faker.address.streetName
   *
  this.streetName = function () {
      var result;
      var suffix = faker.address.streetSuffix();
      if (suffix !== "") {
          suffix = " " + suffix
      }

      switch (faker.random.number(1)) {
      case 0:
          result = faker.name.lastName() + suffix;
          break;
      case 1:
          result = faker.name.firstName() + suffix;
          break;
      }
      return result;
  }

  //
  // TODO: change all these methods that accept a boolean to instead accept an options hash.
  //
  **
   * Returns a random localized street address
   *
   * @method faker.address.streetAddress
   * @param {Boolean} useFullAddress
   *
  this.streetAddress = function (useFullAddress) {
      if (useFullAddress === undefined) { useFullAddress = false; }
      var address = "";
      switch (faker.random.number(2)) {
      case 0:
          address = Helpers.replaceSymbolWithNumber("#####") + " " + faker.address.streetName();
          break;
      case 1:
          address = Helpers.replaceSymbolWithNumber("####") +  " " + faker.address.streetName();
          break;
      case 2:
          address = Helpers.replaceSymbolWithNumber("###") + " " + faker.address.streetName();
          break;
      }
      return useFullAddress ? (address + " " + faker.address.secondaryAddress()) : address;
  }

 **
   * streetSuffix
   *
   * @method faker.address.streetSuffix
   /
  this.streetSuffix = function () {
      return faker.random.arrayElement(faker.definitions.address.street_suffix);
  }
  
 /**
   * streetPrefix
   *
   * @method faker.address.streetPrefix
   /
  this.streetPrefix = function () {
      return faker.random.arrayElement(faker.definitions.address.street_prefix);
  }

   * secondaryAddress
   *
   * @method faker.address.secondaryAddress
  this.secondaryAddress = function () {
      return Helpers.replaceSymbolWithNumber(faker.random.arrayElement(
          [
              'Apt. ###',
              'Suite ###'
          ]
      ));
  }


Centro Curitiba Lat -25.429 Lon -49.2671

*/
ClassMethod StreetSuffix() As %String
{
	Quit $List($ListFromString("Doutor,,Marechal,Padre,,Almirante,General,Monsenhor,,Conselheiro",","),$Random(10)+1)
}

ClassMethod StreetPrefix() As %String
{
	Quit $List($ListFromString("Rua,Avenida,Travessa,Ponte,Alameda,Marginal,Viela,Rodovia",","),$Random(8)+1)
}

ClassMethod StreetName() As %String
{
	S suffix = ..StreetSuffix()
	S:suffix'="" suffix = suffix _ " " 
	Q ..StreetPrefix() _ " " _ suffix _  ##class(cosFaker.Name).FullName(2)
}

ClassMethod Latitude()
{
	Quit ($Random(180 * 10000) / 10000.0) - 90.0
}

ClassMethod Longitude()
{
	Quit ($Random(360 * 10000) / 10000.0 ) - 180.0
}

/// Generates an random Capital<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod Capital(pLocation As %String = "BR") As %String
{
	Quit:pLocation="BR" ..BrazilianCapital()
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) ..AmericanCapital()
	Quit ""
}

ClassMethod BrazilianCapital() As %String [ Private ]
{
	Set Capitals = $ListBuild("Rio Branco","Maceió","Macapá","Manaus","Salvador","Fortaleza","Brasília","Vitória","Goiânia","São Luís","Cuiabá","Campo Grande","Belo Horizonte","Belém","João Pessoa","Curitiba","Recife","Teresina","Rio de Janeiro","Natal","Porto Alegre","Porto Velho","Boa Vista","Florianópolis","São Paulo","Aracaju","Palmas")
	Quit ..Sample(Capitals)
}

ClassMethod AmericanCapital() As %String [ Private ]
{
	Set Capitals = $ListBuild("Montgomery","Juneau","Phoenix","Little Rock","Sacramento","Denver","Hartford","Dover","Tallahassee","Atlanta","Honolulu","Boise","Springfield","Indianapolis","Des Moines","Topeka","Frankfort","Baton Rouge","Augusta","Annapolis","Boston","Lansing","Saint Paul","Jackson","Jefferson City","Helena","Lincoln","Carson City","Concord","Trenton","Santa Fe","Albany","Raleigh","Bismarck","Columbus","Oklahoma City","Salem","Harrisburg","Providence","Columbia","Pierre","Nashville","Austin","Salt Lake City","Montpelier","Richmond","Olympia","Charleston","Madison","Cheyenne")
	Quit ..Sample(Capitals)
}

/// Generates an random State<br/>
/// <b>pFullName</b> = Default is abreviated name of the state<br/>
/// <b>pLocation</b> = "BR" for Brazil or "US"|"EUA"|"USA" for United States of America
ClassMethod State(pFullName As %Boolean = 0, pLocation As %String = "BR") As %String
{
	Quit:pLocation="BR" ..BrazilianState(pFullName)
	Quit:((pLocation="US")||(pLocation="USA")||(pLocation="EUA")) ..AmericanState(pFullName)
	Quit ""
}

ClassMethod BrazilianState(pFullName As %Boolean = 0) As %String [ Private ]
{
	Set lFullName = $ListBuild("Acre","Alagoas","Amapá","Amazonas","Bahia","Ceará","Distrito Federal","Espírito Santo","Goiás","Maranhão","Mato Grosso","Mato Grosso do Sul","Minas Gerais","Pará","Paraíba","Paraná","Pernambuco","Piauí","Rio de Janeiro","Rio Grande do Norte","Rio Grande do Sul","Rondônia","Roraima","Santa Catarina","São Paulo","Sergipe","Tocantins")
	Set lShortName = $ListBuild("AC","AL","AP","AM","BA","CE","DF","ES","GO","MA","MT","MS","MG","PA","PB","PR","PE","PI","RJ","RN","RS","RO","RR","SC","SP","SE","TO")
	Quit:pFullName ..Sample(lFullName)
	Quit ..Sample(lShortName)
}

ClassMethod AmericanState(pFullName As %Boolean = 0) As %String [ Private ]
{
	Set lFullName = $ListBuild("Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming")
	Set lShortName = $ListBuild("AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY")
	Quit:pFullName ..Sample(lFullName)
	Quit ..Sample(lShortName)
}

/// Generates an random Brazilian City<br/>
ClassMethod City(pState As %String = "") As %String
{
	Set:pState="" pState = ..BrazilianState()
	Quit ..BrazilianCity(pState)
	Quit ""
}

ClassMethod BrazilianCity(pState As %String) As %String [ Private ]
{
	Quit $Case(pState,
		"DF":"Brasília",
		"AC":..BRsAC(),
		"AL":..BRsAL(),
		"AP":..BRsAP(),
		"AM":..BRsAM(),
		"BA":..BRsBA(),
		"CE":..BRsCE(),
		"ES":..BRsES(),
		"GO":..BRsGO(),
		"MA":..BRsMA(),
		"MT":..BRsMT(),
		"MS":..BRsMS(),
		"MG":..BRsMG(),
		"PA":..BRsPA(),
		"PB":..BRsPB(),
		"PR":..BRsPR(),
		"PE":..BRsPE(),
		"PI":..BRsPI(),
		"RJ":..BRsRJ(),
		"RN":..BRsRN(),
		"RS":..BRsRS(),
		"RO":..BRsRO(),
		"RR":..BRsRR(),
		"SC":..BRsSC(),
		"SP":..BRsSP(),
		"SE":..BRsSE(),
		"TO":..BRsTO(),
		:"")
}

}
