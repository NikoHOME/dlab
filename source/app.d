import elemi;
import std.conv;
import arsd.cgi;
import dlab.func;
import dlab.html;
import dlab.kadra;

mixin GenericMain!handle;



void handle(Cgi cgi) 
{
	if(cgi.dispatcher!(
		"/static/css/".serveStaticFileDirectory,
		"/static/img/".serveStaticFileDirectory,
		"/static/ppl/".serveStaticFileDirectory,
		"/static/sesja/".serveStaticFileDirectory,
		"/static/js/".serveStaticFileDirectory,
		"/google39f959a444f55869.html".serveStaticFile
	)) return;
	if(defaultHandler(cgi)) return;
	cgi.write("Internal Error");
	return;
}

bool defaultHandler(Cgi cgi)
{
	switch(cgi.pathInfo)
	{
		case "/":
			cgi.write(webHome);
			break;
		case "/warsztaty":
			cgi.write(webWarsztaty);
			break;
		case "/minecraft":
			cgi.write(webMinecraft);
			break;
		case "/kontakt":
			cgi.write(webKontakt);
			break;
		case "/wymagania":
			cgi.write(webWymagania);
			break;
		case "/kadra/wikgaw":
			cgi.write(webKadraWikGaw);
			break;
		default:
			cgi.setResponseStatus("404");
			cgi.write("404 : Not Found");
			break;
	}
	return true;
}



