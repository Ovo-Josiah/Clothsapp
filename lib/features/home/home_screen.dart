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
            Container(
              // height: MediaQuery.of(context).size.height * 0.5,
              // width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(400),
                      color: Colors.blue[200],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
