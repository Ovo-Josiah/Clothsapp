import 'package:clothesapp/features/Pages/category/sub_cate/kid_category_screen.dart';
import 'package:clothesapp/features/Pages/category/sub_cate/men_category_screen.dart';
import 'package:clothesapp/features/Pages/category/sub_cate/women_category_screen.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 245, 245),
          appBar: AppBar(
            titleTextStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,

              fontFamily: 'Metropolis',
              color: Colors.black,
            ),
            centerTitle: true,
            leading: const Icon(Icons.arrow_back),
            backgroundColor: const Color.fromARGB(255, 248, 245, 245),
            title: const Text('Categories'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
            shadowColor: const Color.fromARGB(179, 155, 155, 155),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: AppColors.primaryColor,
              tabs: [
                Tab(text: 'Women'),
                Tab(text: 'Men'),
                Tab(text: 'Kids'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const WomenCategoryScreen(),
              const MenCategoryScreen(),
              const KidCategoryScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
