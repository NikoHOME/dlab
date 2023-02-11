import elemi;
import std.conv;

// HTML document
auto document = text(
    Element.HTMLDoctype,
    elem!"html"(

        elem!"head"(
            elem!"title"("Hello, World!"),
            Element.MobileViewport,
            Element.EncodingUTF8,
        ),

        elem!"body"(
            attr("class") = ["home", "logged-in"],

            elem!"main"(

                elem!"img"(
                    attr("src") = "/logo.png",
                    attr("alt") = "Website logo"
                ),

                // All input is sanitized.
                "<Welcome to my website!>"

            )

        ),

    ),

);