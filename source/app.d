import elemi;
import std.conv;
import arsd.cgi;
import dtst.func;
import dtst.html;

mixin GenericMain!handle;



void handle(Cgi cgi) 
{

	if(cgi.dispatcher!(
		"/".handleWith!defaultHandler,
		"/static/css/".serveStaticFileDirectory,
		"/static/img/".serveStaticFileDirectory,
		"/static/js/".serveStaticFileDirectory
	)) return;
}

void defaultHandler(Cgi cgi)
{
	cgi.write(document);
}



