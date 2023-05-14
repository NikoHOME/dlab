module dlab.slide;

import elemi;

immutable auto slideDOC = elem!"div"(
    attr("class") = "CSSgal",
    elem!"a"(
        attr("id") = "s11",
    ),
    elem!"a"(
        attr("id") = "s22",
    ),
    elem!"a"(
        attr("id") = "s33",
    ),
    elem!"a"(
        attr("id") = "s44",
    ),
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
        attr("class") = "slider-show",
        elem!"img"(
            attr("src") = "static/sesja/homePhoto1.JPG",
            attr("alt") = "logo"
        ),	
        elem!"img"(
            attr("src") = "static/sesja/homePhoto2.JPG",
            attr("alt") = "logo"
        ),
        elem!"img"(
            attr("src") = "static/sesja/homePhoto3.JPG",
            attr("alt") = "logo"
        ),		
        elem!"img"(
            attr("src") = "static/sesja/homePhoto4.JPG",
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
                attr("href") = "#s44", 
            ),
            elem!"a"(
                attr("href") = "#s22", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s11", 
            ),
            elem!"a"(
                attr("href") = "#s33", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s22", 
            ),
            elem!"a"(
                attr("href") = "#s44", 
            ),
        ),
        elem!"div"( 
            elem!"a"(
                attr("href") = "#s33", 
            ),
            elem!"a"(
                attr("href") = "#s11", 
            ),
        ),
    ),
    

    elem!"div"(
        attr("class") = "bullets",
        elem!"a"(
            attr("href") = "#s11",
            "1"
        ),
        elem!"a"(
            attr("href") = "#s22",
            "2"
        ),
        elem!"a"(
            attr("href") = "#s33",
            "3"
        ),
        elem!"a"(
            attr("href") = "#s44",
            "4"
        ),  
    ),
        
);
