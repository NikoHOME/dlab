module dlab.func;

import elemi;
import std.conv;
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

Element sideBar(string title, const string[2][] listInput...)
{
    return elem!"div"(
		attr("class") = "sidebar-left",
        elem!"h2"(attr("class") = "side-title", title),
        elemList(listInput),
    );
}

Element header(string title)
{
    return elem!"div"(
        attr("class") = "page-header",
        elem!"div"(
            attr("class") = "container",
            elem!"h1"(attr("class") = "title", title )
        ),
    );
}

string page(Element inputDocument, string pageTitle, const string[2][] listInput...)
{
    return text(
        Element.HTMLDoctype,
        elem!"html"(
            headDOC,
            elem!"body"(
                attr("class") = ["body ", "body-theme"],
                navbarDOC,
                header(pageTitle),
                elem!"div"(
                    attr("class") = "wrap",

                    elem!"div"(
                        attr("class") = "main-content",
                        inputDocument,
                    ),
                    sideBar("Zajęcia", listInput),
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