import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFE9E9E9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image(
                width: double.infinity,
                height: media.height / 2,
                image: AssetImage('assets/img/snow.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Winter',
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Vacation Trips',
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enjoy your winter vacations with warmth'
                    'and amazing sightseeing on the mountains.'
                    'Enjoy the best experience with us!',
                    style: TextStyle(fontSize: 20, color: Colors.black54,),
                  ),
                  SizedBox(height: 40),
                  FilledButton(
                    onPressed: () => context.go('/discover'),
                    child: Container(
                      padding: EdgeInsets.all(2),
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lets Go', style: TextStyle(fontSize: 20),),
                          Icon(Icons.arrow_right_alt, size: 48),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
