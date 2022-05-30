enum SuggestionType {
  comentario(id: 1, descricao: 'Comentário'),
  critica(id: 2, descricao: 'Crítica'),
  elogio(id: 3, descricao: 'Elogio'),
  sugestao(id: 4, descricao: 'Sugestão');

  final int id;
  final String descricao;

  get idType => id;
  get descriptionType => descricao;

  const SuggestionType({required this.id, required this.descricao});
}
