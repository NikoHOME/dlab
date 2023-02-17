module dtst.html;

import elemi;
import dtst.func;
import std.conv;



immutable navbarDOC = elem!"nav"(
	attr("class") = ["topnav", "topnav-theme"],
	elem!"div"(
		attr("class") = "container",
		elem!"span"(
			attr("class") = "span-nav",
			"Language Laboratoris •"
		),
		elem!"img"(
			attr("src") = "static/img/sun.png",
			attr("id") = "modeImg1",
			attr("alt") = "sun"
		),
		elem!"label"(
			attr("class") = "switch",
			elem!"input"(
				attr("id") = "checkBox1",
				attr("type") = "checkbox",
				attr("onclick") = "manageModes();",
			),
			elem!"span"(attr("class") = "slider"),
		),
		elem!"div"(attr("class") = "spacer-middle"),
		elem!"a"(
			attr("class") = ["a-nav", "a-nav-theme", "active"],
			attr("href") = "#Home",
			"Front"
		),
	)
);

immutable headDOC = elem!"head"(
	elem!"title"("Language Laboratoris •"),
	elemLink("icon", "static/img/favicon.png"),
	elemLink("stylesheet", "static/css/style.css"),
	elemLink("stylesheet", "static/css/style-nav.css"),
	elemLink("stylesheet", "static/css/style-light.css", "cssLight"),
	elem!"script"(attr("src") = "static/js/jquery-1.11.2.min.js"),
	elem!"script"(attr("src") = "static/js/main.js"),
	Element.MobileViewport,
	Element.EncodingUTF8,
);

immutable testDocument = html(testDOC, "Szkoła Językowa", "Zajęcia", mainList);

const string [2][] mainList = 
[
    ["fast.com", "Minecraft"],
    ["fast.com", "Kolonie"],
];

immutable testDOC = elem!"div"(
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
);