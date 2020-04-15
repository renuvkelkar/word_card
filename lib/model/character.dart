import 'package:flutter/material.dart';
class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<String> vocabulary;
  final List<Color> colors;

  Character({this.name, this.imagePath, this.description, this.colors,this.vocabulary});
}

List characters = [
  Character(
      name: "Pingu",
      imagePath: "assets/images/pigu.png",
      description:
      "Pingu is the main character of the series, a typically playful, sometimes naughty, curious little boy penguin. His name comes from the German word for penguin, Pinguin. He is strong-willed and mostly well-behaved but prone to making mischief and throwing occasional tantrums.",
      vocabulary: [
        'on', 'and','out'
      ],
      colors: [Colors.orange.shade200, Colors.deepOrange.shade400]
  ),
  Character(
      name: "Dino",
      imagePath: "assets/images/diano.png",
      description:
      "As TV's first popular cartoon dinosaur, Dino is the best friend a caveman could have. He's loyal, affectionate, protective, and loveable — all necessary qualities for a pet dog dinosaur.",
      vocabulary: [
        'in', 'for','when'
      ],
      colors: [Colors.pink.shade200, Colors.redAccent.shade400]
  ),
  Character(
      name: "Girafee",
      imagePath: "assets/images/giraf.png",
      description:
      "Poor Girafee longs to dance, but his legs are too skinny and his neck too long. At the Jungle Dance, the chimps cha-cha, warthogs waltz, rhinos rock 'n roll and lion dances a tango that is elegantly bold but not Gerald – until one little creature who believes in him, helps him find his own true style.",
      vocabulary: [
        'some', 'so','no'
      ],
      colors: [Colors.blue.shade200, Colors.lightBlueAccent.shade400]
  ),
];
