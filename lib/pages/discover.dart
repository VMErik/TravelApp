import 'package:flutter/material.dart';
import 'package:travelapp/models/location.dart';
import 'package:travelapp/widgets/category_labels.dart';
import 'package:travelapp/widgets/location_card.dart';

class DiscoverPage extends StatelessWidget {
  final List<Location> locations = [
    Location(
      name: 'Zurich',
      location: 'Suiza',
      ranking: 4.5,
      imageUrl: 'assets/img/suiza-zurich.png',
      price: 400,
    ),
    Location(
      name: 'Innsbruck',
      location: 'Austria',
      ranking: 5,
      imageUrl: 'assets/img/austria-innsbruck.png',
      price: 350.99,
    ),
    Location(
      name: 'Salzburgo',
      location: 'Austria',
      ranking: 3.5,
      imageUrl: 'assets/img/austria-salzburgo.png',
      price: 250,
    ),
    Location(
      name: 'Tallin',
      location: 'Estronia',
      ranking: 3,
      imageUrl: 'assets/img/estonia-tallin.png',
      price: 699.50,
    ),
    Location(
      name: 'Chamonix',
      location: 'Francia',
      ranking: 2,
      imageUrl: 'assets/img/francia-chamonix.png',
      price: 289,
    ),
    Location(
      name: 'Praga',
      location: 'Republica Checa',
      ranking: 4,
      imageUrl: 'assets/img/rep-praga.png',
      price: 590,
    ),
  ];

  final List<Location> locationsBanner = [
    Location(
      name: 'Salzburgo',
      location: 'Austria',
      ranking: 3.5,
      imageUrl: 'assets/img/austria-salzburgo.png',
      price: 250,
    ),
    Location(
      name: 'Tallin',
      location: 'Estronia',
      ranking: 3,
      imageUrl: 'assets/img/estonia-tallin.png',
      price: 699.50,
    ),
    Location(
      name: 'Praga',
      location: 'Republica Checa',
      ranking: 4,
      imageUrl: 'assets/img/rep-praga.png',
      price: 590,
    ),
  ];

  DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            'Discover',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/img/avatar.jpg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Cateogry Labels
              CategoryLabels(),
              // Cards Slider
              SizedBox(
                height: 250,
                child: PageView.builder(
                  itemCount: locationsBanner.length,
                  controller: PageController(viewportFraction: 0.90),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: LocationCard(location: locationsBanner[index]),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Text('View All', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              // Cards
              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = 2;
                  return GridView.builder(
                    shrinkWrap: true, // ← ¡clave!
                    physics:
                        const NeverScrollableScrollPhysics(), // ← evita conflicto con SingleChildScrollView
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: locations.length,
                    itemBuilder: (context, index) {
                      Location location = locations[index];
                      return LocationCard(location: location);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
