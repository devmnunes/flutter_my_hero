import 'package:flutter_my_hero/models/character.dart';

Character getMyCharacter() {
  return Character(
      name: "Indiano",
      level: 23,
      hitPoints: 40.2,
      manaPoints: 10.5,
      isAlive: true,
      listAllies: ["PedriNub", "GordinhoMF"],
      player: "Matheus",
      createdAt: DateTime.parse("2025-03-10"),
      urlImage:
          "https://i0.wp.com/ovicio.com.br/wp-content/uploads/dhalsim1280t.jpg?ssl=1");
}
