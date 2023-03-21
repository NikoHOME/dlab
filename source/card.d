module dlab.card;

import elemi;
import dlab.func;

immutable auto agataHofCARD = kadraCard("NADZÓR MERYTORYCZNY","static/ppl/agataHof.webp", agataHofSpan);
immutable auto agataHofSpan = elem!"span"(
    makeBold("dr Agata Hofman"),
    "- twórca programu nauczania i dyrektor w Przedszkolu Gedania 1922 oraz placówce edukacyjnej creoGedania. 
    Właścicel Language Laboratories, jednej z najstarszych szkół językowych w Polsce, 
    która wprowadza innowacyjne programy nauczania języków obcych z wykorzystaniem ICT od 1968 roku. 
    Jest również autorem 2 książek oraz ponad 40 publikacji na temat nauczania języków obcych. 
    W 2009 roku zainicjowała ona projekt Polska Akademia Dzieci. "
);

immutable auto jacJedCARD = kadraCard("LEKTOR, SPECJALISTA","static/ppl/jacJed.webp", jacJedSpan);
immutable auto jacJedSpan = elem!"span"(
    makeBold("mgr Jacek Jędrzejczak "),
    "lektor Language Laboratories", makeBold("od 28 lat")," 
    ma ogromne doświadczenie w pracy z osobami dorosłymi i środowiskami biznesowymi. 
    Autorskie programy, język biznesu i płynna komunikacja 
    to jedne z wielu cech charakterystycznych zajęć prowadzonych przez tego lektora 
    z tak bogatym doświadczeniem w indywidualnym nauczaniu języka angielskiego. "
);

immutable auto ewaSzumiCARD = kadraCard("LEKTOR, FILOZOF","static/ppl/ewaSzumi.webp", ewaSzumiSpan);
immutable auto ewaSzumiSpan = elem!"span"(
    makeBold("dr Ewa Szumilewicz"),
    " jest lektorką angielskiego w Language Laboratories ", makeBold("od 25 lat."), 
    " Jest również doktorem filozofii, która jest jej pasją. 
    Zadaniem, które stawia sobie w pracy z dziećmi, jest przekazanie własnej pasji i miłości do języka. 
    Na zajęciach skupia się głównie na komunikacji i wprowadzaniu sztuki dyskusji.",
);

immutable auto pawHostCARD = kadraCard("LEKTOR, METODYK","static/ppl/pawHost.webp", pawHostSpan);
immutable auto pawHostSpan = elem!"span"(
    makeBold("dr Paweł Hostyński"),
    " jest germanistą, metodykiem, wykładowcą UAM. ", makeBold("Stworzył inicjatywę edukacyjną action-lingua. "),
    " Publikował artykuły naukowe na temat relacji wspomagającej oraz 
    wartości szacunku i autentyzmu w procesie nauczania języków obcych. 
    Na zajęciach skupia się na podążaniu za dzieckiem , 
    eksperymentach fizyko-chemicznych i świetnej zabawie :)",
);

immutable auto aniaBroszCARD = kadraCard("LEKTOR, SPECJALISTA","static/ppl/aniaBrosz.webp", aniaBroszSpan);
immutable auto aniaBroszSpan = elem!"span"(
    makeBold("mgr Ania Broszkiewicz"),
    " jest ", makeBold("od 11 lat "),
    " lektorką języka angielskiego w Language Laboratories z dużym doświadczeniem w zakresie indywidualnego nauczania dzieci . 
    Ania w swojej pracy wykorzystuje dużo gier, zabaw, różnorodnych materiałów plastycznych, ale 
    przede wszystkich potrafi z zapałem rozwijać pasje dzieci. ",
);

immutable auto michCzepCARD = kadraCard("LEKTOR, EDUKATOR","static/ppl/michCzep.webp",  michCzepSpan);
immutable auto michCzepSpan = elem!"span"(
    makeBold("Michał Czepita"),
    " już ", makeBold("od 13 lat "),
    " prowadzi zindywidualizowane zajęcia z elementami robotyki w Language Laboratories. 
    Korzystając z zestawów Lego Mindstorms i obwodów elektrycznych 
    wprowadza komunikację w języku angielskim podczas zaangażowania dzieci
     w tworzenie własnych konstrukcji, maszyn i robotów.  ",
);

immutable auto agneSwaCARD = kadraCard("LEKTOR, PSYCHOLOG","static/ppl/agneSwa.webp",  agneSwaSpan);
immutable auto agneSwaSpan = elem!"span"(
    makeBold("mgr Agnieszka Swarra"),
    " jest lektorką języka angielskiego i psychologiem. 
    Najważniejsze dla niej jest wzmacnianie w dziecku poczucia własnej 
    wartości i rozwijanie ogromnego potencjału drzemiącego w młodych ludziach. 
    Współpracuje z Polską Akademią Dzieci, a w wolnych chwilach wydobywa ze swoich skrzypiec najróżniejsze dźwięki.",
);

immutable auto olgaSukheCARD = kadraCard("LEKTOR, EDUKATOR","static/ppl/olgaSukhe.webp",  olgaSukheSpan);
immutable auto olgaSukheSpan = elem!"span"(
    makeBold("mgr Olga Sukhenko"),
    " jest lektorką z 10-letnim doświadczeniem w nauczaniu. 
    Jej priorytetem jest komunikacja i niestandardowe podejście do zajęć. 
    W pracy z osobami dorosłymi stawia na budowanie indywidualnych programów 
    w oparciu o najnowsze rozwiązania metodyczne.",
);

immutable cardDividerDOC = elem!"div"(
	attr("class") = "card-divider"
);

immutable auto cardSectionDOC = 
[		
    elem!"div"(
        attr("class") = "card-container",
        cardDividerDOC,
        agataHofCARD,
        cardDividerDOC,
        jacJedCARD,
        cardDividerDOC,
    ),
    elem!"div"(
        attr("class") = "card-container",
        cardDividerDOC,
        ewaSzumiCARD,
        cardDividerDOC,
        pawHostCARD,
        cardDividerDOC,
    ),
    elem!"div"(
        attr("class") = "card-container",
        cardDividerDOC,
        aniaBroszCARD,
        cardDividerDOC,
        michCzepCARD,
        cardDividerDOC,
    ),
    elem!"div"(
        attr("class") = "card-container",
        cardDividerDOC,
        agneSwaCARD,
        cardDividerDOC,
        olgaSukheCARD,
        cardDividerDOC,
    ),
];
