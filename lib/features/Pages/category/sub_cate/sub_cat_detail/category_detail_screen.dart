import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:clothesapp/utils/widget/badge_card.dart';
import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatefulWidget {
  const CategoryDetailsScreen({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  String get categoryName => widget.categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Metropolis',
          color: Colors.black87,
        ),
        title: Text("Women's $categoryName"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black12, Colors.black12],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (ctx, index) => BadgeCard(
                    height: 70,
                    width: 100,
                    title: 'Cropt Top',
                    colors: [Colors.black, Colors.black],
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 4,
          //     itemBuilder: (ctx, index) => Text('inpput'),
          //   ),
          // ),
          SizedBox(height: 20),
          Text('This is a good one '),
        ],
      ),
    );
  }
}
