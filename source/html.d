module dlab.html;

import elemi;
import dlab.func;
import dlab.card;
import dlab.footer;
import dlab.offer;
import dlab.slide;

import std.conv;




immutable navbarDOC = elem!"nav"(
	attr("class") = ["topnav", "topnav-theme"],
	elem!"div"(
		attr("class") = "burger-div",
		elem!"nav"(
			attr("role") = "navigation",
			elem!"div"(
				attr("id") = "menuToggle",
				elem!"input"(
					attr("type") = "checkbox",
				),
				elem!"span"(),
				elem!"span"(),
				elem!"span"(),

				elem!"ul"(
					attr("id") = "menu",
					/*
					elem!"img"(
						attr("src") = "/static/img/sun.png",
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
					*/
					elem!"a"(
						attr("href") = "/#Home",
						elem!"li"(
							"Front"
						),
					),
					elem!"a"(
						attr("href") = "/#Kontakt",
						elem!"li"(
							"Kontakt"
						),
					),
					elem!"a"(
						attr("href") = "/#homeMinecraft",
						elem!"li"(
							"Minecraft"
						),
					),
					elem!"a"(
						attr("href") = "/#homeWarsztaty",
						elem!"li"(
							"Kolonie"
						),
					),
					elem!"a"(
						attr("href") = "/#homeStacjonarne",
						elem!"li"(
							"Stacjonarne"
						),
					),
				),
			),
		),
	),
	elem!"span"(
		attr("class") = ["span-nav", "burger-title"],
		"Language Laboratories •"
	),	
	elem!"div"(
		attr("class") = "container",
		elem!"img"(
			attr("class") = "nav-logo",
			attr("src") = "/static/img/logoNoText.jpeg",
			attr("alt") = "logo",
		),
		elem!"span"(
			attr("class") = "span-nav",
			"Language Laboratories •"
		),
		elem!"img"(
			attr("src") = "/static/img/sun.png",
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
				attr("href") = "/#Oferty",
				"Zajęcia"
			),
			elem!"div"(
				attr("class") = "dropdown-content",
				elem!"a"(
					attr("class") = "anim1",
					attr("href") = "/#homeMinecraft",
					"Minecraft",
				),
				elem!"a"(
					attr("class") = "anim2",
					attr("href") = "/#homeWarsztaty",
					"Kolonie",
				),
				elem!"a"(
					attr("class") = "anim3",
					attr("href") = "/#homeStacjonarne",
					"Stacjonarne",
				),
				
			),
		
		
		),
		elem!"a"(
			attr("class") = ["a-nav", "a-nav-theme"],
			attr("href") = "/#Kontakt",
			"Kontakt"
		),
	)
);


immutable headDOC = elems(

	elemTrusted("
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-PSSBSCZ');</script>
	<!-- End Google Tag Manager -->"),
	
	elemLink("icon", "/static/img/favicon.png"),
	elemLink("stylesheet", "/static/css/master.css"),
	elemLink("stylesheet", "/static/css/style-light.css", "cssLight"),
	elemLink("stylesheet alternate", "/static/css/style-dark.css", "cssDark"),
	elem!"script"(attr("src") = "/static/js/jquery-1.11.2.min.js"),
	elem!"script"(attr("src") = "/static/js/main.js"),
	Element.MobileViewport,
	Element.EncodingUTF8,
);

immutable webHome = text(
    Element.HTMLDoctype,
    elem!"html"(
		elem!"head"(
			elem!"title"("Language Laboratories • - szkoła językowa, warsztaty wakacyjne i korepetycje z angielskiego w świecie Minecraft"),
			elem!"meta"(
				attr("name") = "description",
				attr("content") = "Szkoła językowa Language Laboratories, Lanlab - współpracujemy od lat z doświadczonymi ekspertami. 
				Kursy stacjonarne i online. Wprowadzamy innowacyjne sposoby nauczania. Warsztay wakacyjne oraz korepetycje w świecie Minecraft",
			),
			headDOC,
		),

        elem!"body"(
            attr("class") = ["body ", "body-theme"],
            navbarDOC,
            header("Lanlab"),
			
			elem!"div"(
				attr("class") = "wrap-even",
				elem!"div"(
					attr("class") = "home-anchor1",
					elem!"a"(
						attr("class") = "link-button",
						elem!"span"("Więcej",),
						elem!"svg"(
							attr("viewBox") = "-5 -5 110 110",
							attr("preserveAspectRatio") = "none",
							attr("aria-hidden") = "true",
							elem!"path"(
								attr("d") = "M0,0 C0,0 100,0 100,0 C100,0 100,100 100,100 C100,100 0,100 0,100 C0,100 0,0 0,0",
							),
						),
						attr("href") = "/#homeWarsztaty",
					),
				),
				elem!"div"(
					attr("class") = "home-anchor2",
					elem!"a"(
						elem!"span"("Więcej",),
						attr("class") = "link-button",
						elem!"svg"(
							attr("viewBox") = "-5 -5 110 110",
							attr("preserveAspectRatio") = "none",
							attr("aria-hidden") = "true",
							elem!"path"(
								attr("d") = "M0,0 C0,0 100,0 100,0 C100,0 100,100 100,100 C100,100 0,100 0,100 C0,100 0,0 0,0",
							),
						),
						attr("href") = "/#homeMinecraft",
					),
				),
				elem!"div"(
					attr("class") = "home-anchor3",
					elem!"a"(
						attr("class") = "link-button",
						elem!"span"("Więcej",),
						elem!"svg"(
							attr("viewBox") = "-5 -5 110 110",
							attr("preserveAspectRatio") = "none",
							attr("aria-hidden") = "true",
							elem!"path"(
								attr("d") = "M0,0 C0,0 100,0 100,0 C100,0 100,100 100,100 C100,100 0,100 0,100 C0,100 0,0 0,0",
							),
						),
						attr("href") = "/#homeStacjonarne",
					),				
				),

				elem!"div"(
					attr("class") = ["even-column","even-column-left"],
					elem!"img"(
						attr("src") = "static/sesja/homeWarsztaty.JPG",
						attr("alt") = "logo"
                	),
				),
				elem!"div"(
					attr("class") = ["even-column","even-column-middle"],	
					elem!"img"(
						attr("src") = "static/sesja/homeMinecraft.JPG",
						attr("alt") = "logo"
                	),				
				),
				elem!"div"(
					attr("class") = ["even-column","even-column-right"],
					elem!"img"(
						attr("src") = "static/sesja/homeStacjonarne.JPG",
						attr("alt") = "logo"
                	),				
				),
			),

			slideDOC,

			elem!"div"(
				elem!"a"(
					attr("class") = "anchor",
					attr("id") = "Oferty",
				),
				elem!"h1"(
					attr("class") = "offer-h1",
					"Oferty"
				),	
				offerMinecraft1DOC,
				offerMinecraft2DOC,
				offerMinecraft3DOC,

			),
			
			
			elem!"div"(
				attr("class") = ["container-text"],
				elem!"h1"(
					attr("class") = "boldH1",
					"Language Laboratories ® Kadra"
				),
				elem!"h3"(
					attr("class") = "padding",
					" współpracujemy od lat z doświadczonymi ekspertami"
				)
				
			),

			cardSectionDOC,

			loreDOC,

			footerDOC,

        ),
    ),
);



immutable webMinecraft = page(minecraftDOC, minecraftHeadDOC, "Minecraft nauka angielskiego", inputList);
immutable webWarsztaty = page(testDOC, warsztatyHeadDOC, "Warsztaty Mind-Craft",  inputList);
immutable webKontakt = page(kontaktDOC, kontaktHeadDOC, "Kontakt",  inputList);
immutable webWymagania = page(specDOC, wymaganiaHeadDOC, "Wymagania sprzętowe", inputList);

const string[2][][] inputList =
[
	mainList, kontaktList,
];

const string [2][] mainList = 
[
    ["/minecraft", "Minecraft"],
    //["/warsztaty", "Warsztaty"], //TODO
];

const string [2][] kontaktList = 
[
    ["/kontakt", "Kontakt"],
];


immutable minecraftHeadDOC = elems(
	elem!"title"("Korepetycje z angielskiego w świecie gry Minecraft - Language Laboratories •"),
	elem!"meta"(
		attr("name") = "description",
		attr("content") = "Jedyne sprawdzone online korepetycje językowe w świecie gry Minecraft. Twoje dzieci bez problemów opanują język angielski poprzez zabawę",
	),
	elem!"meta"(
		attr("name") = "keywords",
		attr("content") = "minecraft, angielski, korki, korepetycje, gra, zabawa, nauka, język, online",
	),
);

immutable warsztatyHeadDOC = elems(
	elem!"title"("Wakacyjne warsztaty z językiem angielskim - Language Laboratories •"),
);

immutable kontaktHeadDOC = elems(
	elem!"title"("Informacje kontaktowe - Language Laboratories •"),
);

immutable wymaganiaHeadDOC = elems(
	elem!"title"("Wymagania sprzętowe - Language Laboratories •"),
);






immutable kontaktDOC = elem!"div"(
	attr("class") = "mainPageDiv",
    elem!"h3"(
		"Telefon"
	),
	elem!"h4"(
		"533 011 544"
	),
	elem!"h3"(
		"E-mail"
	),
	elem!"h4"(
		"agata.hofman@lanlab.pl"
	),
	elem!"h3"(
		"Adres"
	),
	elem!"h4"(
		"Hallera 201, Gdańsk"
	)

);

immutable testDOC = elem!"div"(
	attr("class") = "mainPageDiv",
    elem!"p"(""),

);

immutable specDOC = elem!"div"(
	attr("class") = "mainPageDiv",
	elem!"p"(
		"Podstawowe elementy",	
		elem!"ol"(
			elem!"li"(
				"Połączenie z internetem najlepiej przez kabel"
			),
				elem!"li"(
				"Sprawny mikrofon"
			),
			elem!"li"(
				"Sprawne słuchawki lub głośniki"
			),
		)
	),
	elem!"p"(
		"Rekomendowana minimalna specyfikacja komputera",
		elem!"ol"(
			elem!"li"(
				"8GB Ram-u"
			),
			elem!"li"(
				"4 rdzeniowy procesor"
			),
		)
	),
	elem!"p"(
		"Programy do zainstalowania",
		elem!"ol"(
			elem!"li"(
				"Minecraft Launcher - oficjalny launcher gry"
			),
			elem!"li"(
				"Discord (Opcjonalnie) - preferowana platforma do komunikacji z uczniem"
			),
			elem!"li"(
				"Team Viewer (Opcjonalnie) - program do zdalnej pomocy technicznej"
			),
		)
	),
	elem!"h4"(
		"W przypadku wątpliwości lub problemów technicznych służymy pomocą."
	),
	elem!"h4"(
		"Tel : "
	)
);

immutable minecraftDOC = elem!"div"(
	attr("class") = "mainPageDiv",
	elem!"h2"(
		"Zajęcia z angielskiego, które twoje dziecko pokocha."
	),
	elem!"h3"(
		"Grupa docelowa 7-13 lat"
	),
	elem!"h3"(
		"Czas trwania lekcji 60 minut"
	),
	elem!"p"(
		"Prowadzący",
		elem!"ol"(
			elem!"li"(
				elem!"a"(
					//attr("href") = "/kadra/szyhof",
					//TODO
					"Szymon Hoffman "
				),
			),
			elem!"li"(
				elem!"a"( 
					//attr("href") = "/kadra/wikgaw",
					//TODO
					"Wiktor Gawroński "
				),
			),
		)
	),
	elem!"h4"(
		"Lekcje dla dzieci są prowadzone w środowisku gry, żeby zachęcić ucznia do kożystania z języka angielskiego.
		Luźna forma zajęć pozwala na oswojenie się z językiem i pozbyciu się nieśmiałości w jego używania."
	),
	elem!"h4"(
		"Treści oraz konwersacje w trakcie zajęć dopasowane są do zainteresowań oraz wieku ucznia, lub aktualnych wydarzeń."
	),
	elem!"p"(
		"Cele zajęć",
		elem!"ol"(
			elem!"li"(
				"Sprawna komunikacja dwustronna w języku angielskim"
			),
			elem!"li"(
				"Umiejętność prowadzenia luźnej konwersacji"
			),
			elem!"li"(
				"Rozwój kreatywnego myślenia i umiejętności planowania"
			),
		)
	),
	elem!"p"(
		"Wymagania",
		elem!"ol"(
			elem!"li"(
				"Sprawny komputer do gry i komunikacji ",
				elem!"a"(
					attr("href") = "wymagania",
					makeBold("Dokładna specyfikacja")
				),
			),
			elem!"li"(
				"Konto Minecraft"
			),
		)
	),
);