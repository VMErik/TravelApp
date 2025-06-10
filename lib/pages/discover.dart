import 'package:flutter/material.dart';
import 'package:travelapp/models/location.dart';
import 'package:travelapp/widgets/location_card.dart';

class DiscoverPage extends StatelessWidget {
  final List<String> categories = [
    'Popular',
    'Featured',
    'Most Visited',
    'Europe',
    'Asia',
    'America',
  ];

  final List<Location> locations = [
    Location(
      name: 'Zurich - Suiza',
      ranking: 4.5,
      imageUrl: 'assets/img/suiza-zurich.png',
    ),
    Location(
      name: 'Innsbruck - Austria',
      ranking: 5,
      imageUrl: 'assets/img/austria-innsbruck.png',
    ),
    Location(
      name: 'Salzburgo - Austria',
      ranking: 3.5,
      imageUrl: 'assets/img/austria-salzburgo.png',
    ),
    Location(
      name: 'Tallin - Estronia',
      ranking: 3,
      imageUrl: 'assets/img/estonia-tallin.png',
    ),
    Location(
      name: 'Chamonix - Francia',
      ranking: 2,
      imageUrl: 'assets/img/francia-chamonix.png',
    ),
    Location(
      name: 'Praga - Republica Checa',
      ranking: 4,
      imageUrl: 'assets/img/rep-praga.png',
    ),
  ];

  final List<Location> locationsBanner = [
    Location(
      name: 'Tallin - Estronia',
      ranking: 3,
      imageUrl: 'assets/img/estonia-tallin.png',
    ),
    Location(
      name: 'Chamonix - Francia',
      ranking: 2,
      imageUrl: 'assets/img/francia-chamonix.png',
    ),
    Location(
      name: 'Praga - Republica Checa',
      ranking: 4,
      imageUrl: 'assets/img/rep-praga.png',
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
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color:
                              index == 0 ? Color(0XFF403A7A) : Colors.black45,
                        ),
                      ),
                    );
                  },
                ),
              ),

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
