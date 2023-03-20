module dlab.html;

import elemi;
import dlab.func;
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
						attr("href") = "/#homeKolonie",
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
					attr("href") = "/#homeKolonie",
					"Kolonie",
				),
				elem!"a"(
					attr("class") = "anim1",
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

immutable headDOC = elem!"head"(
	elem!"title"("Language Laboratories •"),
	elemLink("icon", "/static/img/favicon.png"),
	elemLink("stylesheet", "/static/css/style.css"),
	elemLink("stylesheet", "/static/css/style-nav.css"),
    elemLink("stylesheet", "/static/css/style-home.css"),
	elemLink("stylesheet", "/static/css/style-footer.css"),
	elemLink("stylesheet", "/static/css/style-separator.css"),
	elemLink("stylesheet", "/static/css/style-offer.css"),
	elemLink("stylesheet", "/static/css/style-dropdown.css"),
	elemLink("stylesheet", "/static/css/style-burger.css"),
	elemLink("stylesheet", "/static/css/style-page.css"),
	elemLink("stylesheet", "/static/css/style-light.css", "cssLight"),
	elem!"script"(attr("src") = "/static/js/jquery-1.11.2.min.js"),
	elem!"script"(attr("src") = "/static/js/main.js"),
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
/*
			elem!"div"(
				attr("class") = "home-banner",
				elem!"div"(attr("class") = "home-anchor1"),
				elem!"div"(attr("class") = "home-anchor2"),
				elem!"div"(attr("class") = "home-anchor3"),
				elem!"div"(
					attr("class") = "home-column1",
					elem!"img"(
						attr("src") = "static/img/logo.png",
						attr("alt") = "logo"
                	),
				),
				elem!"div"(
					attr("class") = "home-column2",
					elem!"img"(
						attr("src") = "static/img/screenshot.png",
						attr("alt") = "logo"
                	),				
				),
				elem!"div"(
					attr("class") = "home-column3",
					elem!"img"(
						attr("src") = "static/img/favicon.png",
						attr("alt") = "logo"
                	),				
				),
			),
			*/
			elem!"div"(
				attr("class") = "wrap-even",
				
				elem!"div"(attr("class") = "home-anchor1"),
				elem!"div"(attr("class") = "home-anchor2"),
				elem!"div"(attr("class") = "home-anchor3"),

				elem!"div"(
					attr("class") = ["even-column","even-column-left"],
					elem!"img"(
						attr("src") = "static/img/logo.png",
						attr("alt") = "logo"
                	),
				),
				elem!"div"(
					attr("class") = ["even-column","even-column-middle"],
					elem!"img"(
						attr("src") = "static/img/screenshot.png",
						attr("alt") = "logo"
                	),				
				),
				elem!"div"(
					attr("class") = ["even-column","even-column-right"],
					elem!"img"(
						attr("src") = "static/img/favicon.png",
						attr("alt") = "logo"
                	),				
				),
			),
			elem!"div"(
				elem!"a"(
					attr("class") = "anchor",
					attr("id") = "Oferty",
				),
				elem!"h1"(
					attr("class") = "offer-h1",
					"Oferty"
				),	
				elem!"div"(
					attr("class") = ["wrap35","wrap-left","offer", "offer-right"],
					elem!"a"(
						attr("class") = "anchor",
						attr("id") = "homeMinecraft",
					),
					elem!"div"(
						attr("class") = ["main-content","offer-img"],
						elem!"img"(
							attr("src") = "/static/img/screenshot.png",
							attr("alt") = "blank"
						),
					),
					elem!"div"(
						attr("class") = ["sidebar","offer-text"],
						elem!"h2"(
							"Minecraft Angielski"
						),
						elem!"h3"(
							"Grupa docelowa 7-13 lat"
						),
						elem!"h3"(
							"Czas trwania lekcji 60 minut"
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
					),
				),
				elem!"div"(
					attr("class") = ["wrap35","wrap-right","offer", "offer-left"],
					elem!"a"(
						attr("class") = "anchor",
						attr("id") = "homeMinecraft",
					),
					elem!"div"(
						attr("class") = ["main-content","offer-img"],
						elem!"img"(
							attr("src") = "/static/img/screenshot.png",
							attr("alt") = "blank"
						),
					),
					elem!"div"(
						attr("class") = ["sidebar","offer-text"],
						elem!"h2"(
							"Pół kolonie"
						),
						elem!"h3"(
							"Grupa docelowa 7-13 lat"
						),
						elem!"h3"(
							"Czas trwania lekcji 60 minut"
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
					),
				),
				elem!"div"(
					attr("class") = ["wrap35","wrap-left","offer", "offer-right"],
					elem!"a"(
						attr("class") = "anchor",
						attr("id") = "homeMinecraft",
					),
					elem!"div"(
						attr("class") = ["main-content","offer-img"],
						elem!"img"(
							attr("src") = "/static/img/screenshot.png",
							attr("alt") = "blank"
						),
					),
					elem!"div"(
						attr("class") = ["sidebar","offer-text"],
						elem!"h2"(
							"Zajęcia stacjonarne"
						),
						elem!"h3"(
							"Grupa docelowa 7-13 lat"
						),
						elem!"h3"(
							"Czas trwania lekcji 60 minut"
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
					),
				),
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

			
			elem!"div"(
				attr("class") = "card-container",
				cardDividerDOC,
				kadraCard("NADZÓR MERYTORYCZNY","static/ppl/agataHof.webp", elem!"span"(
					makeBold("dr Agata Hofman"),
					"- twórca programu nauczania i dyrektor w Przedszkolu Gedania 1922 oraz placówce edukacyjnej creoGedania. 
					Właścicel Language Laboratories, jednej z najstarszych szkół językowych w Polsce, 
					która wprowadza innowacyjne programy nauczania języków obcych z wykorzystaniem ICT od 1968 roku. 
					Jest również autorem 2 książek oraz ponad 40 publikacji na temat nauczania języków obcych. 
					W 2009 roku zainicjowała ona projekt Polska Akademia Dzieci. "
				)),
				cardDividerDOC,
				kadraCard("LEKTOR, SPECJALISTA","static/ppl/jacJed.webp", elem!"span"(
					makeBold("mgr Jacek Jędrzejczak "),
					"lektor Language Laboratories", makeBold("od 28 lat")," 
					ma ogromne doświadczenie w pracy z osobami dorosłymi i środowiskami biznesowymi. 
					Autorskie programy, język biznesu i płynna komunikacja 
					to jedne z wielu cech charakterystycznych zajęć prowadzonych przez tego lektora 
					z tak bogatym doświadczeniem w indywidualnym nauczaniu języka angielskiego. "
				)),
				cardDividerDOC,
			),
			elem!"div"(
				attr("class") = "card-container",
				cardDividerDOC,
				kadraCard("LEKTOR, SPECJALISTA","static/ppl/jacJed.webp", elem!"span"(
					makeBold("mgr Jacek Jędrzejczak "),
					"lektor Language Laboratories", makeBold("od 28 lat")," 
					ma ogromne doświadczenie w pracy z osobami dorosłymi i środowiskami biznesowymi. 
					Autorskie programy, język biznesu i płynna komunikacja 
					to jedne z wielu cech charakterystycznych zajęć prowadzonych przez tego lektora 
					z tak bogatym doświadczeniem w indywidualnym nauczaniu języka angielskiego. "
				)),
				cardDividerDOC,
			),
			elem!"div"(
				attr("class") = ["blueDiv", "whiteText",],
			
				elem!"div"(
					attr("class") = ["container-text"],
					elem!"h1"(
						attr("class") = "boldH1",
						"Language Laboratories ®"
					),
					elem!"h3"(
						attr("class") = "padding",
						"Edukacja. Nauka. Tradycja."
					),
					elem!"h4"(
						attr("class") = "padding",
						" Language Laboratories ® to jedna z pierwszych szkół językowych w Polsce. 
						Założona w 1968 roku w Gdańsku przez dr Henrykę Szumilewicz oraz dr Benedykta Szumilewicza. 
						Od września 2018 roku zajęcia odbywają się na terenie GKS Gedania 1922, budynek creoGedania. 
						Właścicielem firmy jest Szymon Hofman."
					),
					elem!"h4"(
						attr("class") = "padding",
						" Uczymy języków obcych na wszystkich poziomach zaawansowania dla dzieci, młodzieży i dorosłych. 
						Placówka edukacyjno-badawcza opiera się o najnowsze światowe trendy w nauczaniu języków obcych."
					),
					elem!"h4"(
						attr("class") = "padding",
						" Prowadzimy intensywne kursy ze specjalistami z wieloletnim doświadczeniem! 
						Nauka języka angielskiego w oparciu o autorski program nauczania, który cechuje wysoka skuteczność. 
						Pracujemy m.in. metodą immersji, w oparciu o relację wspomagającą, z zastosowaniem elementów robotyki, 
						druku 3D, sztuki dyskusji i wielu innych narzędzi dydaktycznych, spersonalizowanych na rzecz dostosowania do potrzeb każdego ucznia. 
						Podczas zajęć zostaną poruszone zagadnienia dzięki którym w krótkim czasie podniesiesz swoje kompetencje językowe; co więcej, 
						otrzymasz informacje zwrotne jak masz się uczyć, aby zwiększyć swoją skuteczność."
					)
				),
			),

			elem!"div"(
				attr("class") = "footer",
				elem!"a"(
					attr("class") = "anchor",
					attr("id") = "Kontakt",
				),
				elem!"div"(
					attr("class") = "footer-c",
					elem!"h1"(
						"Language Laboratoris•"
					),
				),
				elem!"div"(
					attr("class") = "footer-c",
					elem!"svg"(
						attr("class") = "svg-icon",
						attr("xmlns") = "http://www.w3.org/2000/svg",
						attr("viewBox") = "0 0 384 512",
						elem!"path"( 
							attr("d") = "M0 64C0 28.7 28.7 0 64 0H288c35.3 0 64 28.7 64 64V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zM208 448a32 32 0 1 0 -64 0 32 32 0 1 0 64 0zM288 64H64V384H288V64z",
						),
					),
					elem!"h3"(
						"Zadzwoń"
					),
					elem!"h4"(
						"533 011 544"
					),
				),
				elem!"div"(
					attr("class") = "footer-c",
					elem!"svg"(
						attr("class") = "svg-icon",
						attr("xmlns") = "http://www.w3.org/2000/svg",
						attr("viewBox") = "0 0 576 512",
						elem!"path"(
							attr("d") = "M408 120c0 54.6-73.1 151.9-105.2 192c-7.7 9.6-22 9.6-29.6 0C241.1 271.9 168 174.6 168 120C168 53.7 221.7 0 288 0s120 53.7 120 120zm8 80.4c3.5-6.9 6.7-13.8 9.6-20.6c.5-1.2 1-2.5 1.5-3.7l116-46.4C558.9 123.4 576 135 576 152V422.8c0 9.8-6 18.6-15.1 22.3L416 503V200.4zM137.6 138.3c2.4 14.1 7.2 28.3 12.8 41.5c2.9 6.8 6.1 13.7 9.6 20.6V451.8L32.9 502.7C17.1 509 0 497.4 0 480.4V209.6c0-9.8 6-18.6 15.1-22.3l122.6-49zM327.8 332c13.9-17.4 35.7-45.7 56.2-77V504.3L192 449.4V255c20.5 31.3 42.3 59.6 56.2 77c20.5 25.6 59.1 25.6 79.6 0zM288 152a40 40 0 1 0 0-80 40 40 0 1 0 0 80z",
						),
					),
					elem!"h3"(
						"Znajdź nas"
					),
					elem!"h4"(
						"Hallera 201, Gdańsk"
					),
				),
			),

        ),
    ),
);



immutable cardDividerDOC = elem!"div"(
	attr("class") = "card-divider"
);



immutable webMinecraft = page(minecraftDOC, "Minecraft nauka angielskiego",  mainList);
immutable webKolonie = page(testDOC, "Półkolonie Mind-Craft", mainList);
immutable webKontakt = page(testDOC, "Kontakt", mainList);
immutable webWymagania = page(specDOC, "Wymagania sprzętowe", mainList);



const string [2][] mainList = 
[
    ["/minecraft", "Minecraft"],
    ["/kolonie", "Kolonie"],
];

immutable testDOC = elem!"div"(
	attr("class") = "mainPageDiv",
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
    elem!"p"("bruh"),
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
					attr("href") = "/kadra/szyhof",
					"Szymon Hoffman "
				),
			),
			elem!"li"(
				elem!"a"( 
					attr("href") = "/kadra/wikgaw",
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