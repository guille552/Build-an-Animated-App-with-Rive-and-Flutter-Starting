import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

import 'components/animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false, 
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            //height: 100,
            width: MediaQuery.of(context).size.width*1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png")
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset("assets/RiverAssets/shapes.riv"),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        Text("Learn design & code", 
                          style: TextStyle(
                            fontSize: 60, 
                            fontFamily: "Poppins",
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 16), 
                        Text(
                          "Officia reprehenderit aliquip magna ea aute voluptate nulla tempor qui reprehenderit sit commodo non sit. Commodo nisi ea dolore eiusmod. Excepteur ut consectetur reprehenderit magna Lorem deserunt veniam anim voluptate amet. Sit nostrud elit occaecat eu enim culpa irure Lorem deserunt adipisicing. Dolore voluptate officia labore dolore Lorem in ullamco eu minim magna aute exercitation et. Id nostrud sunt in exercitation quis."
                        )
                      ],
                    ),
                  ),
                  const Spacer(flex: 2),
                  animatedbtn(
                    btnAnimationController: _btnAnimationController,
                    press: () {
                      _btnAnimationController.isActive = true;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text("Sit Lorem sunt elit incididunt in in pariatur laboris non consectetur id nulla. Ad veniam ipsum laborum eiusmod consequat aute. Deserunt ipsum duis occaecat enim."),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}

