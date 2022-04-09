import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Text(
              model.user,
            ),
            Text(
              model.profession,
              style: const TextStyle(color: kDangerColor),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
