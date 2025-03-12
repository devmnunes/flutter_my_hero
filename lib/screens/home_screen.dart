import 'package:flutter/material.dart';
import 'package:flutter_my_hero/data/my_character.dart';
import 'package:flutter_my_hero/models/character.dart';
import 'package:flutter_my_hero/widgets/list_item.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Character character = getMyCharacter();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu Personagem",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 128, 39),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 7,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          print("O BOTÃO FOI CLICADO");
        },
        backgroundColor: const Color.fromARGB(255, 36, 128, 39),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.network(
                  character.urlImage!,
                  width: 300,
                ),
              ),
              Text(
                character.name,
                style: GoogleFonts.seaweedScript(
                  fontSize: 62,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  "Por ${character.player}, criado em ${character.createdAt.toString().substring(0, 10)}.",
                   style: TextStyle(fontStyle: FontStyle.italic),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(),
              ),
              ListItem(title: "Nivel:", value: character.level.toString()),
              ListItem(title: "Vida:", value: "${character.hitPoints}/${character.level*11}"
              ),
              ListItem(title: "Mana", value: "${character.manaPoints}/${character.level*2}"),
              ListItem(title: "Vivo?", 
              value: (character.isAlive)? "❤️" : "💀",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
