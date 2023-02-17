module dlab.html;

import elemi;
import dlab.func;
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
			attr("class") = ["a-nav", "a-nav-theme"],
			attr("href") = "/#Home",
			"Front"
		),
		elem!"div"(
			attr("class") = "dropdown-div",
			elem!"a"(
				attr("class") = ["a-nav", "a-nav-theme"],
				attr("href") = "/#Zajęcia",
				"Zajęcia"
			),
			elem!"div"(
				attr("class") = "dropdown-content",
				elem!"a"(
					attr("class") = "anim1",
					attr("href") = "/minecraft",
					"Minecraft",
				),
				elem!"a"(
					attr("class") = "anim2",
					attr("href") = "/kolonie",
					"Kolonie",
				),
				
			),
		
		
		),
		elem!"a"(
			attr("class") = ["a-nav", "a-nav-theme"],
			attr("href") = "/kontakt",
			"Kontakt"
		),
	)
);

immutable headDOC = elem!"head"(
	elem!"title"("Language Laboratoris •"),
	elemLink("icon", "static/img/favicon.png"),
	elemLink("stylesheet", "static/css/style.css"),
	elemLink("stylesheet", "static/css/style-nav.css"),
    elemLink("stylesheet", "static/css/style-home.css"),
	elemLink("stylesheet", "static/css/style-dropdown.css"),
	elemLink("stylesheet", "static/css/style-light.css", "cssLight"),
	elem!"script"(attr("src") = "static/js/jquery-1.11.2.min.js"),
	elem!"script"(attr("src") = "static/js/main.js"),
	Element.MobileViewport,
	Element.EncodingUTF8,
);

immutable webHome = text(
    Element.HTMLDoctype,
    elem!"html"(
        headDOC,
        elem!"body"(
            attr("class") = ["body ", "body-theme"],
            navbarDOC,
            header("Lanlab"),

            elem!"div"(
                attr("class") = "banner",
                elem!"img"(
                    attr("src") = "static/img/logo.jpeg",
                    attr("alt") = "logo"
                )
            ),
        
        ),
    ),
);




immutable webMinecraft = page(testDOC, "Minecraft nauka angielskiego",  mainList);
immutable webKolonie = page(testDOC, "Półkolonie Mind-Craft", mainList);
immutable webKontakt = page(testDOC, "Kontakt", mainList);



const string [2][] mainList = 
[
    ["minecraft", "Minecraft"],
    ["kolonie", "Kolonie"],
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