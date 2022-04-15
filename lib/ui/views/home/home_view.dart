import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: Center(
          child: Row(
            children: [
              Container(
                color: kBackgroundColor,
                width: devWidth / 2,
              ),
              Container(
                color: kSecBackgroud,
                width: devWidth / 2,
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
