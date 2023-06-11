module dlab.slide;

import elemi;
import std.conv;
import std.format;
import std.range;
import std.algorithm;

immutable auto slideDOC = elem!"div"(
    attr("class") = "CSSgal",
    iota(1, 5)
        .map!(i => elem!"div"(
            attr("id") = text("s", i, i)
        )),

    elem!"a"(
        attr("class") = ["slideImgTitle", "slideImg1Title"],
        attr("href") = "/#homeMinecraft",
        "Mine & Learn - Angielski",
    ),
    elem!"a"(
        attr("class") = ["slideImgTitle", "slideImg2Title"],
        attr("href") = "/#homeWarsztaty",
        "Warsztaty wakacyjne - Angielski",
    ),
    elem!"a"(
        attr("class") = ["slideImgTitle", "slideImg3Title"],
        attr("href") = "/#homeMinecraft",
        "Mine & Learn - Angielski",
    ),
    elem!"a"(
        attr("class") = ["slideImgTitle", "slideImg4Title"],
        attr("href") = "/#homeWarsztaty",
        "Warsztaty wakacyjne - Angielski",
    ),
    
    elem!"div"(
        attr("class") = "slider-show",
        
        iota(1, 5)
            .map!(j => elem!"img"(
                attr("alt") = "logo",
                attr("id") = format!"slideImg%s"(j),
                attr("src") = format!"static/sesja/homePhoto%s.JPG"(j),
            )),
        
        elem!"div"(
            elem!"h2"( "Pure"),
        ),
        elem!"div"(
            elem!"h2"( "Slide2"),
        ),
        elem!"div"(
            elem!"h2"( "Slide3"),
        ),
        elem!"div"(
            elem!"h2"( "Slide4"),
        ),

        
    ),
    elem!"div"(
        attr("class") = "prevNext",
        elem!"div"( 
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s44", 
            ),
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s22", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s11", 
            ),
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s33", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s22", 
            ),
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s44", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s33", 
            ),
            elem!"a"(
                attr("class") = "link",
                attr("href") = "#s11", 
            ),
        ),
    ),
    

    elem!"div"(
        attr("class") = "bullets",
        elem!"a"(
            attr("class") = "link",
            attr("href") = "#s11",
            "1"
        ),
        elem!"a"(
            attr("class") = "link",
            attr("href") = "#s22",
            "2"
        ),
        elem!"a"(
            attr("class") = "link",
            attr("href") = "#s33",
            "3"
        ),
        elem!"a"(
            attr("class") = "link",
            attr("href") = "#s44",
            "4"
        ),  
    ),
        
);
