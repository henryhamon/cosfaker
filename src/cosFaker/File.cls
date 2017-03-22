Class cosFaker.File
{

ClassMethod Extension() As %String
{
	Set ext = $ListBuild("flac", "mp3", "wav", "bmp", "gif", "jpeg", "jpg", "png", "tiff", "css", "csv", "html", "js", "json", "txt", "mp4", "avi", "mov", "webm", "doc", "docx", "xls", "xlsx", "ppt", "pptx", "odt", "ods", "odp", "pages", "numbers", "key", "pdf")
	Quit $List(ext, $Random($ListLength(ext))+1)
}

ClassMethod MimeType() As %String
{
	Set ext = $ListBuild("application/atom+xml", "application/ecmascript", "application/EDI-X12", "application/EDIFACT", "application/json", "application/javascript", "application/ogg", "application/pdf", "application/postscript", "application/rdf+xml", "application/rss+xml", "application/soap+xml", "application/font-woff", "application/xhtml+xml", "application/xml-dtd", "application/xop+xml", "application/zip", "application/gzip", "audio/basic", "audio/L24", "audio/mp4", "audio/mpeg", "audio/ogg", "audio/vorbis", "audio/vnd.rn-realaudio", "audio/vnd.wave", "audio/webm", "image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/svg+xml", "image/tiff", "image/vnd.microsoft.icon", "message/http", "message/imdn+xml", "message/partial", "message/rfc822", "model/example", "model/iges", "model/mesh", "model/vrml", "model/x3d+binary", "model/x3d+vrml", "model/x3d+xml", "multipart/mixed", "multipart/alternative", "multipart/related", "multipart/form-data", "multipart/signed", "multipart/encrypted", "text/cmd", "text/css", "text/csv", "text/html", "text/javascript", "text/plain", "text/vcard", "text/xml", "video/mpeg", "video/mp4", "video/ogg", "video/quicktime", "video/webm", "video/x-matroska", "video/x-ms-wmv", "video/x-flv")
	Quit $List(ext, $Random($ListLength(ext))+1)
}

ClassMethod Filename(pDir As %String = "", pName As %String = "", pExt As %String = "", pDirectorySeparator As %String = "/") As %String
{
	Set:pDir="" pDir = ##class(cosFaker.Internet).Slug()
	Set:pName="" pName = ##class(cosFaker.Lorem).Word()
	Set:pExt="" pExt = ..Extension()
	
	Quit $ListToString($ListBuild(pDir, pName _ "." _ pExt),pDirectorySeparator)
}

}

