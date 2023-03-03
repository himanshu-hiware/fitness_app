import 'package:flutter/material.dart';
import 'package:gymo/splash_screens/intro_screen1.dart';
import 'package:gymo/splash_screens/onBoardingscreen.dart';
import 'package:lottie/lottie.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> with TickerProviderStateMixin {
  @override
  late final AnimationController _controler;
  void initState(){
    super.initState();
    _controler= AnimationController(vsync: this);
  }
  void dispose(){
    _controler.dispose();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network('https://assets8.lottiefiles.com/packages/lf20_u1iT3cT3oQ.json',
            controller: _controler,
              onLoaded: (compos){
              _controler
              ..duration = compos.duration
              ..forward().then((value) => Navigator.push(context, MaterialPageRoute(builder: (context){
                return OnboardingScreen();
                  }
                )
                )
              );
              }
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("fito"),
            )

          ],
        ),
    );
  }
}

