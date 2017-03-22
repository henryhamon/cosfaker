# cosfaker [![GitHub issues](https://img.shields.io/github/issues/badges/shields.svg)](https://github.com/henryhamon/cosfaker/issues)
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
