import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget {
  const ClothesCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 4,
          shadowColor: Colors.grey,
          child: Row(
            // Image COntainer
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.purpleAccent,
                        Colors.purpleAccent,
                      ],
                    ),
                  ),
                  child: Image(
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * 0.4,
                    image: AssetImage(image),
                  ),
                ),
              ),
            ],
            // Clothes Description
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
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
