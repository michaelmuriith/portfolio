import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/ui/widget/widget.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devWidth = MediaQuery.of(context).size.width;
    var devHeight = MediaQuery.of(context).size.height;
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.black38),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: devWidth / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MySeparator(
                    height: 2,
                    color: kSecBackgroud,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    model.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      fontSize: 70,
                      fontWeight: FontWeight.w300,
                      color: kSecBackgroud,
                    ),
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      color: kSecBackgroud,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('I am a '),
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Frontend',
                              speed: const Duration(microseconds: 50000),
                            ),
                            TypewriterAnimatedText(
                              'Backend',
                              speed: const Duration(microseconds: 50000),
                            ),
                            TypewriterAnimatedText(
                              'Fullstack',
                              speed: const Duration(microseconds: 50000),
                            ),
                            TypewriterAnimatedText(
                              'Android',
                              speed: const Duration(microseconds: 50000),
                            ),
                          ],
                        ),
                        const Text('Developer'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const MySeparator(
                    height: 2,
                    color: kSecBackgroud,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      IconLink(
                        icon: FontAwesomeIcons.githubAlt,
                        size: 20,
                        color: Color(0xff00405d),
                        url: 'https://twitter.com/mikemuriithi4',
                      ),
                      IconLink(
                        icon: FontAwesomeIcons.linkedinIn,
                        size: 18,
                        color: Color(0xff0077b5),
                        url: 'https://twitter.com/mikemuriithi4',
                      ),
                      IconLink(
                        icon: FontAwesomeIcons.m,
                        size: 15,
                        color: Color(0xff000000),
                        url: 'https://twitter.com/mikemuriithi4',
                      ),
                      IconLink(
                        icon: FontAwesomeIcons.twitter,
                        size: 15,
                        color: Color(0xff55acee),
                        url: 'https://twitter.com/mikemuriithi4',
                      ),
                      IconLink(
                        icon: FontAwesomeIcons.envelope,
                        size: 15,
                        color: Color(0xfffb3958),
                        url: 'https://twitter.com/mikemuriithi4',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
