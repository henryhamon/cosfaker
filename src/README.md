# cosFaker [![GitHub issues](https://img.shields.io/github/issues/henryhamon/cosfaker.svg)](https://github.com/henryhamon/cosfaker/issues) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/henryhamon/cosfaker/master/LICENSE) 
generate massive amounts of fake data for Intersystems Caché

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
