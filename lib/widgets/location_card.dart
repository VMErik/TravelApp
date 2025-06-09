import 'package:flutter/material.dart';
import 'package:travelapp/models/location.dart';

class LocationCard extends StatelessWidget {
  final Location location;

  const LocationCard({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 350,
      child: Stack(
        children: [
          // Fondo de la tarjeta
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(location.imageUrl),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          // Título en la parte inferior
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                  top: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        location.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5, // Número total de estrellas posibles
                          (index) => Icon(
                            index < location.ranking
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ),
                      Text(
                        location.ranking.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
