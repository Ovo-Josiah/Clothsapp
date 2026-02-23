import "package:clothesapp/common/widgets/t_custom_curve_edges.dart";
import "package:clothesapp/utils/constants/app_text.dart";
import "package:clothesapp/utils/constants/c_sizes.dart";
// import "package:clothesapp/common/widgets/tcircularcontainer.dart";
// import "package:clothesapp/utils/constants/app_colors.dart";
import "package:clothesapp/utils/constants/image_strings.dart";
import "package:clothesapp/utils/widget/button.dart";
import 'package:transparent_image/transparent_image.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdges(
              child: Stack(
                children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: AssetImage(ImageStrings.fashionSale),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: .5),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    // top: MediaQuery.of(context).size.height * 0.4,
                    top: MediaQuery.of(context).size.height * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.fashion,
                          // style: Theme.of(context).textTheme.headlineLarge,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30,
                    // top: MediaQuery.of(context).size.height * 0.4,
                    top: 370,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.sale,
                          // style: Theme.of(context).textTheme.headlineLarge,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 60,
                    child: Button(
                      height: CSizes.btnHSm,
                      width: 160,
                      title: AppText.fashionBtnText,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.fashionSubHeading,
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          AppText.fashionContent,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        AppText.viewAll,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvedEdges extends StatelessWidget {
  const CurvedEdges({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurveEdges(), child: child);
  }
}


// Container(
//                 // height: MediaQuery.of(context).size.height * 0.5,
//                 // width: MediaQuery.of(context).size.width,
//                 color: Colors.blue[600],
//                 padding: const EdgeInsets.all(0),
//                 child: SizedBox(
//                   height: 400,
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: -150,
//                         right: -250,
//                         child: TCircularContianer(
//                           backroundColor: AppColors.app.withValues(alpha: 0.1),
//                         ),
//                       ),
//                       Positioned(
//                         top: 100,
//                         right: -300,
//                         child: TCircularContianer(
//                           backroundColor: AppColors.app.withValues(alpha: 0.1),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),