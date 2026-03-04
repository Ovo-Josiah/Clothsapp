import 'package:flutter/material.dart';

class MenCategoryScreen extends StatefulWidget {
  const MenCategoryScreen({super.key});

  @override
  State<MenCategoryScreen> createState() => _MenCategoryScreenState();
}

class _MenCategoryScreenState extends State<MenCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Men'));
  }
}
