module dlab.footer;

import elemi;


immutable auto loreDOC = elem!"div"(
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
);


immutable auto footerDOC = elem!"div"(
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
        elem!"a"(
            attr("href") = "/kontakt",
            "Więcej",
        )
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
);