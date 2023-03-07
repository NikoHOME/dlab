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
	elem!"title"("Language Laboratories •"),
	elemLink("icon", "/static/img/favicon.png"),
	elemLink("stylesheet", "/static/css/style.css"),
	elemLink("stylesheet", "/static/css/style-nav.css"),
    elemLink("stylesheet", "/static/css/style-home.css"),
	elemLink("stylesheet", "/static/css/style-dropdown.css"),
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

            elem!"div"(
                attr("class") = "banner",
                elem!"img"(
                    attr("src") = "static/img/logo.jpeg",
                    attr("alt") = "logo"
                )
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
						"Edukacja. Nauka. Tradycja."
					),
					elem!"h4"(
						" Language Laboratories ® to jedna z pierwszych szkół językowych w Polsce. 
						Założona w 1968 roku w Gdańsku przez dr Henrykę Szumilewicz oraz dr Benedykta Szumilewicza. 
						Od września 2018 roku zajęcia odbywają się na terenie GKS Gedania 1922, budynek creoGedania. 
						Właścicielem firmy jest Szymon Hofman."
					),
					elem!"h4"(
						" Uczymy języków obcych na wszystkich poziomach zaawansowania dla dzieci, młodzieży i dorosłych. 
						Placówka edukacyjno-badawcza opiera się o najnowsze światowe trendy w nauczaniu języków obcych."
					),
					elem!"h4"(
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
			
				elem!"div"(
					attr("class") = ["container-text"],
					elem!"h1"(
						attr("class") = "boldH1",
						"Language Laboratories ® Kadra"
					),
					elem!"h3"(
						" współpracujemy od lat z doświadczonymi ekspertami"
					)
					
				),
			),
			
			elem!"div"(
				attr("class") = "container",
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
			),
			elem!"div"(
				attr("class") = "container",
				kadraCard("LEKTOR, SPECJALISTA","static/ppl/jacJed.webp", elem!"span"(
					makeBold("mgr Jacek Jędrzejczak "),
					"lektor Language Laboratories", makeBold("od 28 lat")," 
					ma ogromne doświadczenie w pracy z osobami dorosłymi i środowiskami biznesowymi. 
					Autorskie programy, język biznesu i płynna komunikacja 
					to jedne z wielu cech charakterystycznych zajęć prowadzonych przez tego lektora 
					z tak bogatym doświadczeniem w indywidualnym nauczaniu języka angielskiego. "
				)),
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
		"Opłaty",
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