module dlab.slide;

import elemi;

immutable auto slideDOC = elem!"div"(
    attr("class") = "CSSgal",
    elem!"s"(
        attr("id") = "s1",
    ),
    elem!"s"(
        attr("id") = "s2",
    ),
    elem!"s"(
        attr("id") = "s3",
    ),
    elem!"s"(
        attr("id") = "s4",
    ),
    elem!"div"(
        attr("class") = "slider",
        elem!"img"(
            attr("src") = "static/img/favicon.png",
            attr("alt") = "logo"
        ),	
        elem!"img"(
            attr("src") = "static/sesja/homeKolonie.JPG",
            attr("alt") = "logo"
        ),
        elem!"img"(
            attr("src") = "static/sesja/homeMinecraft.JPG",
            attr("alt") = "logo"
        ),		
        elem!"img"(
            attr("src") = "static/img/favicon.png",
            attr("alt") = "logo"
        ),	
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
                attr("href") = "#s4", 
            ),
            elem!"a"(
                attr("href") = "#s2", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s1", 
            ),
            elem!"a"(
                attr("href") = "#s3", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s2", 
            ),
            elem!"a"(
                attr("href") = "#s4", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s3", 
            ),
            elem!"a"(
                attr("href") = "#s1", 
            ),
        ),
    ),
    

    elem!"div"(
        attr("class") = "bullets",
        elem!"a"(
            attr("href") = "#s1",
            "1"
        ),
        elem!"a"(
            attr("href") = "#s2",
            "2"
        ),
        elem!"a"(
            attr("href") = "#s3",
            "3"
        ),
        elem!"a"(
            attr("href") = "#s4",
            "4"
        ),  
    ),
        
);
