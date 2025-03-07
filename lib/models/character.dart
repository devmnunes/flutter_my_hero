class Character {
  // Dados do Personagem
  String name;
  int level;
  double hitPoints;
  double manaPoints;
  bool isAlive;
  List<String> listAllies;

  // Dados do Jogador
  String player;
  DateTime createdAt;

  // Imagem do Personagem
  String? urlImage;

  Character({
required this.name,
required this.level,
required this.hitPoints,
required this.manaPoints,
required this.isAlive,
required this.listAllies,
required this.player,
required this.createdAt,
this.urlImage,
});
}
