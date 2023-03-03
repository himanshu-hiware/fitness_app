import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class intro_screen1 extends StatelessWidget {
  const intro_screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 130.0,bottom: 100),
            child: Text("Yoga se hi hoga ",
            style: TextStyle(
              fontSize: 30,
              // fontStyle:
            )
          ),
          ),
          Center(
            child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_4ggqrsq6.json'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0,bottom: 10),
            child: Text("page 1"),
          ),
        ],
      ),
    );
  }
}
