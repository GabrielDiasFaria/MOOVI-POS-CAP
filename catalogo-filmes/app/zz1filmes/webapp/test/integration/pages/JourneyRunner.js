sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"br/com/moovi/zz1filmes/test/integration/pages/FilmesList.gen",
	"br/com/moovi/zz1filmes/test/integration/pages/FilmesObjectPage.gen"
], function (JourneyRunner, FilmesListGenerated, FilmesObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('br/com/moovi/zz1filmes') + '/test/flp.html#app-preview',
        pages: {
			onTheFilmesListGenerated: FilmesListGenerated,
			onTheFilmesObjectPageGenerated: FilmesObjectPageGenerated
        },
        async: true
    });

    return runner;
});

