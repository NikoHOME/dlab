module dlab.kadra;

import elemi;
import std.conv;
import dlab.func;
import dlab.html;


immutable webKadraWikGaw = page(wikGawDOC, "Wiktor Gawroński", inputList);

//TODO
immutable wikGawDOC = elem!"div"(
	attr("class") = "mainPageDiv",
    elem!"h2"(
        "Lektor - Minecraft"
    ),
    elem!"h4"(
        "Kontakt"
    ),
    elem!"h4"(
        "Tel: "
    ),
);
