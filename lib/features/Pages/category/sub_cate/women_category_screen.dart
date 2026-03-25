import 'package:clothesapp/data/dummy_data.dart';
import 'package:clothesapp/features/Pages/category/category_widget/clothes_card.dart';
import 'package:clothesapp/features/Pages/category/category_widget/women_header.dart';
import 'package:clothesapp/model/category_type.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:clothesapp/utils/constants/app_text.dart';
// import 'package:clothesapp/utils/constants/image_strings.dart';

import 'package:flutter/material.dart';

class WomenCategoryScreen extends StatefulWidget {
  const WomenCategoryScreen({super.key});

  @override
  State<WomenCategoryScreen> createState() => WomenCategoryScreenState();
}

class WomenCategoryScreenState extends State<WomenCategoryScreen> {
  String text = AppText.seasonSaleName;

  List<CategoryType> items = dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Container
            WomenHeader(title: text, promo: 'Up to 50% off'),
            SizedBox(height: 10),
            // ListView
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: items.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),

                    child: ClothesCard(
                      type: items[index].type,
                      image: items[index].image,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  height: MediaQuery.of(context).size.height * 0.64,

//  ClipRRect(
//               borderRadius: BorderRadiusGeometry.directional(
//                 bottomStart: Radius.circular(20),
//                 bottomEnd: Radius.circular(20),
//                 topStart: Radius.circular(20),
//                 topEnd: Radius.circular(20),
//               ),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.64,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.white,
//                       const Color.fromARGB(255, 217, 245, 245),
//                       Colors.white,
//                     ],
//                   ),
//                 ),
//                 child: ListView.builder(
//                   itemCount: 5,
//                   itemBuilder: (_, index) {
//                     return Padding(
//                       padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                       child: ClothesCard(image: ImageStrings.sale),
//                     );
//                   },
//                 ),
//               ),
//             ),