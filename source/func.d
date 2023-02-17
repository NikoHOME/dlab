module dtst.func;

import elemi;
import std.conv;
import dtst.html;


Element elemLink(string rel, string href, string id = "")
{
	Element output = elem!"link"(
		attr("rel") = rel,
		attr("href") = href,
		attr("id") = id,
	);
	return output;
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
    Element output = elem!"div"(
		attr("class") = "sidebar-left",
        elem!"h2"(attr("class") = "side-title", title),
        elemList(listInput),
    );

    return output;
}

Element header(string title)
{
    Element output = elem!"div"(
        attr("class") = "page-header",
        elem!"div"(
            attr("class") = "container",
            elem!"h1"(attr("class") = "title", title )
        ),
    );

    return output;
}

string html(Element inputDocument, string pageTitle, string listTitle, const string[2][] listInput...)
{
    string output = text(
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
                    sideBar(listTitle, listInput),
                ),
            ),
        ),
    );
    return output;
}