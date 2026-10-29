using { meucatalogo } from '../db/schema';

service CatalogoFilmesService {
    entity Filmes as projection on meucatalogo.Filmes;
}