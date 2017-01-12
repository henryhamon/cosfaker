Class cosFaker.Address Extends %RegisteredObject
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

}

