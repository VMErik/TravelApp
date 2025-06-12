import 'package:flutter/material.dart';

class CategoryLabels extends StatelessWidget {
  final List<String> categories = [
    'Popular',
    'Featured',
    'Most Visited',
    'Europe',
    'Asia',
    'America',
  ];
  CategoryLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                color: index == 0 ? Color(0XFF403A7A) : Colors.black45,
              ),
            ),
          );
        },
      ),
    );
  }
}
