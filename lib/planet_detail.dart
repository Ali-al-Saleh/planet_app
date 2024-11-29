import 'package:flutter/material.dart';

class PlanetScreen extends StatelessWidget {
  final int planetNumber;

  PlanetScreen({required this.planetNumber});

  @override
  Widget build(BuildContext context) {
    List<String> planets = ["Earth", "Mars", "Jupiter", "Venus", "Saturn"];
    List<String> info = [
      "Earth, our home, is the only known planet to support life, thanks to its perfect distance from the Sun, liquid water, and breathable atmosphere. It’s also the only planet where water exists in all three states: solid (ice), liquid (water), and gas (vapor). Spinning at a speed of 1,670 km/h at the equator, Earth’s rotation gives us day and night!",
      "Known as the Red Planet for its rusty surface, Mars once had rivers, lakes, and even an ocean. It’s home to Olympus Mons, the tallest volcano in the solar system, and a canyon system, Valles Marineris, that dwarfs Earth's Grand Canyon. Mars might host future human colonies, with ongoing missions searching for signs of ancient life!",
      "Jupiter, the king of planets, is so massive that over 1,300 Earths could fit inside it! Its Great Red Spot, a colossal storm larger than Earth, has been raging for centuries. Jupiter’s powerful gravity acts as a shield, protecting the inner solar system from many comets and asteroids.",
      "Venus, the Evening Star, is Earth’s twin in size but is incredibly hostile, with surface temperatures hot enough to melt lead! Its atmosphere rains sulfuric acid and traps heat in a runaway greenhouse effect. Despite its harsh conditions, Venus spins in the opposite direction of most planets, making its sunrises unique!",
      "Saturn, the jewel of the solar system, dazzles with its iconic rings made of ice and rock. It’s so light that it could float in water if you could find a big enough bathtub! Saturn’s largest moon, Titan, has lakes of liquid methane and is one of the most promising places to search for alien life."
    ];
    List<List<String>> facts = [
      [
        "Earth’s surface is 71% water, earning it the nickname Blue Planet.",
        "It has a molten iron core, creating a magnetic field that protects us from harmful solar radiation.",
        "Earth is 4.5 billion years old but constantly changing due to tectonic activity.",
        "The ozone layer shields life from harmful ultraviolet rays.",
        "Its atmosphere contains 78% nitrogen, 21% oxygen, and traces of other gases."
      ],
      [
        "Mars is known as the Red Planet due to its rusty, iron-rich surface.",
        "Olympus Mons, the tallest volcano in the solar system, is located on Mars.",
        "A Martian day (sol) is 24 hours and 37 minutes long.",
        "Mars once had rivers, lakes, and possibly an ocean, indicating past water flow.",
        "Its two moons, Phobos and Deimos, are believed to be captured asteroids."
      ],
      [
        "Jupiter is so massive that more than 1,300 Earths could fit inside it.",
        "Its Great Red Spot is a storm larger than Earth that has lasted for centuries.",
        "Jupiter has at least 92 moons, with Ganymede being the largest moon in the solar system.",
        "It has a faint ring system made of dust particles.",
        "Jupiter’s magnetic field is 20,000 times stronger than Earth’s."
      ],
      [
        "Venus is Earth's twin in size but has surface temperatures hot enough to melt lead.",
        "Its atmosphere rains sulfuric acid and traps heat in a runaway greenhouse effect.",
        "Venus spins in the opposite direction of most planets, making its day longer than its year.",
        "It is the brightest object in the night sky after the Moon due to its reflective clouds.",
        "Venus has no moons or rings, unlike many other planets."
      ],
      [
        "Saturn is famous for its iconic rings made of ice and rock particles.",
        "It has at least 145 moons, with Titan being the largest and most intriguing.",
        "Saturn is so light it could float in water if a bathtub big enough existed.",
        "A year on Saturn equals 29 Earth years, but its day lasts only 10.7 hours.",
        "Its hexagonal storm at the north pole remains one of the solar system's great mysteries."
      ]
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Planet: ${planets[planetNumber - 1]}",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 8),
          Text(
            info[planetNumber - 1],
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Text(
            "Facts:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          for (String fact in facts[planetNumber - 1])
            Text("- $fact", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
