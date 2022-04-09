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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              model.user,
              style: const TextStyle(color: kCaptionColor),
            ),
            Text(
              model.profession,
              style: const TextStyle(color: kDangerColor),
            ),
            Text(
              model.description,
              style: const TextStyle(color: kCaptionColor),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
