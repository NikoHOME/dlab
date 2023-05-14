module dlab.offer;

import elemi;
import dlab.func;


immutable auto offerMinecraft1DOC = offerSection("homeMinecraft", "/static/sesja/homeMinecraft.JPG", false, offerMinecraft1Content);

immutable auto offerMinecraft1Content = [
    elem!"h2"(
        "Angielski poprzez zabawę - Minecraft"
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
    elem!"a"(
        attr("href") = "/minecraft",
        "Więcej",
    )
];
immutable auto offerMinecraft2DOC = offerSection("homeWarsztaty", "/static/sesja/homeWarsztaty2.JPG", true, offerMinecraft2Content);
immutable auto offerMinecraft2Content = [
    elem!"h2"(
        "Warsztaty wakacyjne"
    ),
    elem!"h3"(
        "Grupa docelowa 7-13 lat"
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
    elem!"a"(
        attr("href") = "/warsztaty",
        "Więcej",
    ),
];

immutable auto offerMinecraft3DOC = offerSection("homeStacjonarne", "/static/sesja/homeStacjonarne.JPG", false, offerMinecraft3Content);
immutable auto offerMinecraft3Content = [
    elem!"h2"(
        "Zajęcia stacjonarne"
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
];