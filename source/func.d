module dtst.func;

import elemi;


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

Element sideBar(const string title, const string[2][] listInput...)
{
    Element output = elem!"div"(
		attr("class") = "sidebar-left",
        elem!"h2"(attr("class") = "side-title", title),
        elemList(listInput),
    );

    return output;
}

Element header(const string title)
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