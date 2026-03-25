// import 'package:clothesapp/features/Pages/category/categories_page.dart';
// import 'package:clothesapp/features/Pages/home/home_screen.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// class Main extends StatefulWidget {
//   const Main({super.key});

//   @override
//   State<Main> createState() => _MainState();
// }

// class _MainState extends State<Main> {
//   int selectedIndex = 0;

//   void selectPage(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget activePage = HomeScreen();

//     if (selectedIndex == 1) {
//       activePage = CategoriesPage();
//     }

//     // for( int i = 0; i < selectedIndex; i++) {
//     //   activePage = const HomeScreen();

//     //   if (i == 1) {
//     //     activePage = BagPage();
//     //   }

//     //   if (i == 2) {
//     // }

//     return Scaffold(
//       bottomNavigationBar: ClipRRect(
//         borderRadius: BorderRadiusGeometry.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         child: BottomNavigationBar(
//           elevation: 2,
//           selectedItemColor: AppColors.primaryColor,
//           unselectedItemColor: AppColors.tertiaryColor,
//           backgroundColor: AppColors.primaryColor,
//           type: BottomNavigationBarType.shifting,
//           currentIndex: selectedIndex,
//           onTap: selectPage,
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//             BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.card_travel),
//               label: 'Bag',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_border_outlined),
//               label: 'Favourites',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person_2_outlined),
//               label: 'Profile',
//             ),
//           ],
//         ),
//       ),
//       body: activePage,
//     );
//   }
// }

class MainLayout extends StatelessWidget {
  const MainLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: _calculateIndex(context),
          onTap: (index) {
            switch (index) {
              case 0:
                context.go('/');
                break;
              case 1:
                context.go('/categories');
                break;
              case 2:
                context.go('/bag');
                break;
              case 3:
                context.go('/favourites');
                break;
              case 4:
                context.go('/profile');
                break;
            }
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.tertiaryColor,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: 'Bag',
            ),
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
      ),
    );
  }

  int _calculateIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    if (location.startsWith('/categories')) return 1;
    if (location.startsWith('/bag')) return 2;
    if (location.startsWith('/favourites')) return 3;
    if (location.startsWith('/profile')) return 4;
    return 0;
  }
}
