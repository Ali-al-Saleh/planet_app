import 'package:flutter/material.dart';
import 'planet_detail.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  Widget? planetDetails;

  void _showPlanetDetails(int planetNumber) {
    setState(() {
      planetDetails = PlanetScreen(planetNumber: planetNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlanetPedia"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Colors.black,
            height: 1.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose a planet by typing a number:",
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 8),
              Text(
                "1: Earth\n"
                "2: Mars\n"
                "3: Jupiter\n"
                "4: Venus\n"
                "5: Saturn",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your number here",
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  int? num = int.tryParse(_controller.text);
                  if (num != null && num > 0 && num < 6) {
                    _showPlanetDetails(num);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text("Please enter a number between 1 and 5")),
                    );
                  }
                },
                child: Text("Show Details"),
              ),
              SizedBox(height: 16),
              if (planetDetails != null) ...[
                Divider(thickness: 1.2),
                planetDetails!,
              ]
            ],
          ),
        ),
      ),
    );
  }
}
