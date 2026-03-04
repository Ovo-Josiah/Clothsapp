import 'package:clothesapp/utils/widget/badge_card.dart';
import 'package:flutter/material.dart';

class HomeNewCard extends StatelessWidget {
  const HomeNewCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(image),
                    // child: Image(image: AssetImage(image)),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: BadgeCard(
                    title: 'New',
                    colors: [Colors.black, Colors.black],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dorothy Perkins'),
                  SizedBox(height: 2),
                  Text('Evening Dress'),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        "123",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text('125'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        Positioned(
          bottom: 90,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.white]),

                borderRadius: BorderRadius.circular(100),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
