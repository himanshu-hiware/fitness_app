import 'package:flutter/material.dart';
import 'package:gymo/pages/Homepage.dart';
import 'package:gymo/splash_screens/intro_screen1.dart';
import 'package:gymo/splash_screens/splash_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screen2.dart';
import 'intro_screen3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  // controllrer to keep track of which page we are on
    PageController _controller = PageController();
    bool LastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index){
              setState(() {
                LastPage = (index==2);
              });
            },
            controller: _controller,
            children : [
              intro_screen1(),
              intro_screen2(),
              intro_screen3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip button
                GestureDetector(
                    child: Text("skip"),
                  onTap: (){
                      _controller.jumpToPage(2);
                  },

                ),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3,effect: SwapEffect()),


                //skip or done
                LastPage ? GestureDetector(
                  child:Text("Done"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                        return splash_screen();
                    }
                    ),
                    );
                  },
                )
                    : GestureDetector(
                        child:Text("next"),
                        onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                      },
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
