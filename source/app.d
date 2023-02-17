import elemi;
import std.conv;
import arsd.cgi;
import dtst.func;
import dtst.html;

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
			cgi.write(testDocument);
			break;
		default:
			cgi.setResponseStatus("404");
			cgi.write("404 : Not Found");
			break;
	}
	return true;
}



