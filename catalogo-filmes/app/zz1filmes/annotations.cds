using CatalogoFilmesService as service from '../../srv/service';


annotate service.Filmes with @(
    UI: {
        // Cabeçalho da página
        HeaderInfo: {
            TypeName: 'Filme',
            TypeNamePlural: 'Filmes',
            Title: { Value: titulo },
            Description: { Value: diretor }
        },
        // Colunas da Tabela (List Report)
        LineItem: [
            { Value: titulo, Label: 'Título' },
            { Value: diretor, Label: 'Diretor' },
            { Value: anoLancamento, Label: 'Ano de Lançamento' },
            { Value: genero, Label: 'Gênero' }
        ],
        // Seções da Página de Detalhes (Object Page)
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Informações Gerais',
                Target: '@UI.FieldGroup#Detalhes'
            }
        ],
        // Campos que aparecem dentro da aba de Detalhes
        FieldGroup#Detalhes: {
            Data: [
                { Value: titulo, Label: 'Título' },
                { Value: diretor, Label: 'Diretor' },
                { Value: anoLancamento, Label: 'Ano de Lançamento' },
                { Value: genero, Label: 'Gênero' },
                { Value: sinopse, Label: 'Sinopse' }
            ]
        }
    }
)