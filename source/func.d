module dlab.func;

import elemi;
import std.conv;
import std.stdio;
import dlab.html;

Element makeBold(string text)
{
    return elem!"strong"(
        text
    );
}

Element elemLink(string rel, string href, string id = "")
{
	return elem!"link"(
		attr("rel") = rel,
		attr("href") = href,
		attr("id") = id,
	);
}

Element elemImg(string src, string alt, string oneClass = "")
{
	return elem!"img"(
		attr("src") = src,
		attr("alt") = alt,
        attr("class") = oneClass,
	);
}

Element elemList(const string[2][] input...)
{
    Element output = elem!"ul"(
		attr("class") = "list",
    );
    foreach (pair; input)
    {
        output ~= elem!"li"(
            attr("class") = "list-elem",
            elem!"a"(attr("href") = pair[0], pair[1])
        );
    }
    return output;
}

Element sideBar(string[] titles, const string[2][][] listInput...)
{
    import std.range;
    Element output = elem!"div"(
		attr("class") = "sidebar",
    );

    foreach (title, input; zip(titles, listInput)) {
        output ~= elem!"h2"(attr("class") = "side-title", title);
        output ~= elemList(input);
    }

    return output;
}

Element header(string title)
{
    return elem!"div"(
        attr("class") = "page-header",
        attr("id") = "Home",
        elem!"div"(
            attr("class") = "container",
            elem!"h1"(attr("class") = "title", title )
        ),
    );
}

string page(Element inputDocument, Element inputHead, string pageTitle, const string[2][][] listInput...)
{
    return text(
        Element.HTMLDoctype,
        elem!"html"(
            elem!"head"(
                inputHead,
                headDOC,
            ),
            elem!"body"(
                attr("class") = ["body ", "body-theme"],
                navbarDOC,
                header(pageTitle),
                elem!"div"(
                    attr("class") = "wrap-left",

                    elem!"div"(
                        attr("class") = "main-content",
                        inputDocument,
                    ),
                    sideBar(["Zajęcia", "Kontakt"], listInput),
                ),
            ),
        ),
    );
}

Element kadraCard(string title, string src, Element textElement)
{
    return 	elem!"div"(
        attr("class") = ["card", "card-theme"],
        elem!"div"(
            attr("class") = "card-body",
        
            elemImg(src, "kadra"),
            elem!"div"(
                attr("class") = "card-text-top-lec",
                elem!"h1"(
                    attr("class") = "cardH1",
                    makeBold(title)
                )
            ),
            elem!"div"(
                attr("class") = "card-text-middle-lec",
                textElement
            ),
        )
    );
}

Element offerSection(string anchor, string image, bool isLeft, const Element[] content)
{
    Element output =  elem!"div"();
    output ~= elem!"div"(
        attr("class") = "offer-divider"
    );
    if(isLeft)
        output ~= attr("class") = ["wrap35", "wrap-right", "offer", "offer-left"];
    else
        output ~= attr("class") = ["wrap35", "wrap-left", "offer", "offer-right"];

    output ~= elem!"a"(
        attr("class") = "anchor",
        attr("id") = anchor,
    ),

    output ~= elem!"div"(
        attr("class") = ["main-content","offer-img"],
        elem!"img"(
            attr("src") = image,
            attr("alt") = "blank"
        ),
    );
    output ~= elem!"div"(
        attr("class") = ["sidebar","offer-text"],
        content
    );

    output ~= elem!"div"(
        attr("class") = "offer-top",
    );

    output ~= elem!"div"(
        attr("class") = "offer-bottom",
    );

    return output;
}
