import elemi;
import std.conv;
import arsd.cgi;
import dlab.func;
import dlab.html;

mixin GenericMain!handle;



void handle(Cgi cgi) 
{
	if(cgi.dispatcher!(
		"/static/css/".serveStaticFileDirectory,
		"/static/img/".serveStaticFileDirectory,
		"/static/js/".serveStaticFileDirectory
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
		case "/kolonie":
			cgi.write(webMinecraft);
			break;
		case "/minecraft":
			cgi.write(webKolonie);
			break;
		case "/kontakt":
			cgi.write(webKontakt);
			break;
		default:
			cgi.setResponseStatus("404");
			cgi.write("404 : Not Found");
			break;
	}
	return true;
}



