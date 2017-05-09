# cosFaker [![GitHub issues](https://img.shields.io/github/issues/henryhamon/cosfaker.svg)](https://github.com/henryhamon/cosfaker/issues) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/henryhamon/cosfaker/master/LICENSE) 
Generate massive amounts of fake data for Intersystems Caché

The language of data is according to configuration of your Caché (Now works with Pt-Br and En-Us(Default)).
## Valid Types
* Address (Street, Latitude, Longitude, City, State, Capital, Country, Street Suffix, Street Prefix)
* App (Function name)
* Coffee (Blend name, Variety, Notes, Origin)
* Commerce (Price, CNPJ)
* Company (Profession, Industry)
* Dates (Forward, Backward)
* DragonBall (Character)
* File (Filename, Extension, MimeType)
* Finance (Amount, Credit Card, Bitcoin Address)
* Game (Card, Mortal Kombat, Street Fighter)
* Internet (Username, Email, Protocol, Domain Word, Domain Name, Avatar, Url, Slug)
* Job (Title, Skills, Field)
* Lorem (Words, Sentences, Paragraphs, Lines, Text, Hipster)
* Name (First name, Last Name, Full Name, Suffix)
* Person (CPF (Brazilian ID))
* Phone (Area code, Phone number, Cell phone)
* Pokemon (Pokemons)
* StarWars (Character, Droid, Planet, Quote, Specie, Vehicle, Wookie word, Wookie Sentence)
* UFC (Category, Fighter, Fighter by category, Nickname)


## Usage

### On Populate

You can use on Populate event

```cos
Method OnPopulate() As %Status [ ServerOnly = 1 ]
{
	Set ..Login = ##class(cosFaker.Internet).UserName("John","Doe")
	Set ..Url = ##class(cosFaker.Internet).DomainWord()
}
```
Or on a simple Set

```cos
Set ..Name = ##class(cosFaker.Name).FullName()
```

### SQL Class

You can generate data directly on a table

```cos
Do ##class(cosFaker.SQL).Insert("Sample_Data.Clients","City,Name,Salary","city BR SC,name 2,price 1000 2000 2 R$",2)
//Same as:
//INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Celso Ramos','Luiggi Dias Nunes Saraiva','R$1654.30')
//INSERT INTO Sample_Data.Clients (City,Name,Salary) VALUES ('Nova Veneza','Fabiano da Costa','R$1255.13')
```