import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Bag'));
  }
}
