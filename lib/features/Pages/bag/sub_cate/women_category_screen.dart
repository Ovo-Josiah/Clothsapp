import 'package:clothesapp/features/Pages/bag/category_widget/clothes_card.dart';
import 'package:clothesapp/features/Pages/bag/category_widget/women_header.dart';
import 'package:clothesapp/utils/constants/image_strings.dart';

import 'package:flutter/material.dart';

class WomenCategoryScreen extends StatefulWidget {
  const WomenCategoryScreen({super.key});

  @override
  State<WomenCategoryScreen> createState() => WomenCategoryScreenState();
}

class WomenCategoryScreenState extends State<WomenCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Container
            WomenHeader(title: 'Women'),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.directional(
                bottomStart: Radius.circular(20),
                bottomEnd: Radius.circular(20),
                topStart: Radius.circular(20),
                topEnd: Radius.circular(20),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.64,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      const Color.fromARGB(255, 217, 245, 245),
                      Colors.white,
                    ],
                  ),
                ),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: ClothesCard(image: ImageStrings.sale),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  height: MediaQuery.of(context).size.height * 0.64,