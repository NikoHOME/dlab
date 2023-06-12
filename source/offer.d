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
    // elem!"a"(
    //     attr("href") = "/minecraft",
    //     "Więcej",
    // ),
    elem!"div"(
        attr("class") = "link-container",
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
            attr("href") = "/minecraft",
        ),
    ),
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
    // elem!"a"(
    //     attr("href") = "/warsztaty",
    //     "Więcej",
    // ),
    elem!"div"(
        attr("class") = "link-container",
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
            attr("href") = "/warsztaty",
        ),
    ),
];

immutable auto offerMinecraft3DOC = offerSection("homeStacjonarne", "/static/sesja/homeStacjonarne.JPG", false, offerMinecraft3Content);
immutable auto offerMinecraft3Content = [
    elem!"h2"(
        "Zajęcia stacjonarne"
    ),
    // elem!"h3"(
    //     "Czas trwania lekcji 60 minut"
    // ),
    // elem!"p"(
    //     "Cele zajęć",
    //     elem!"ol"(
    //         elem!"li"(
    //             "Sprawna komunikacja dwustronna w języku angielskim"
    //         ),
    //         elem!"li"(
    //             "Umiejętność prowadzenia luźnej konwersacji"
    //         ),
    //         elem!"li"(
    //             "Rozwój kreatywnego myślenia i umiejętności planowania"
    //         ),
    //     )
    // ),
];