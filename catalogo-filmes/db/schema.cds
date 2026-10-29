namespace meucatalogo;

entity Filmes {
    key id : UUID;
    titulo : String(150);
    diretor : String(100);
    anoLancamento : String(4);
    genero : String(50);
    sinopse : String(1000);
}