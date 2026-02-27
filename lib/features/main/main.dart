import 'package:clothesapp/features/Pages/bag/bag.dart';
import 'package:clothesapp/features/Pages/home/home_screen.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int selectedIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = HomeScreen();

    if (selectedIndex == 1) {
      activePage = BagPage();
    }

    // for( int i = 0; i < selectedIndex; i++) {
    //   activePage = const HomeScreen();

    //   if (i == 1) {
    //     activePage = BagPage();
    //   }

    //   if (i == 2) {
    // }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 2,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.tertiaryColor,

        currentIndex: selectedIndex,
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Bag'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: activePage,
    );
  }
}
