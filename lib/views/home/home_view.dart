import 'package:flutter/material.dart';

import '../../constants/contants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: const [Text('Michael A. Wanji')],
      ),
    );
  }
}
