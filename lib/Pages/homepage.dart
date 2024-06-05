import 'package:barista/Pages/LandPage.dart';
import 'package:barista/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color textColor = Color.fromRGBO(0, 0, 0, 0.54);
    Color text = Color.fromRGBO(255, 255, 255, 1);
    Color buttontext = Color.fromRGBO(0, 0, 0, 0.54);
    
    double blackSpaceHeight = 370.0;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'Assets/Images/homebackground.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - blackSpaceHeight,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: blackSpaceHeight,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Coffee so good, your taste buds will love it.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: text,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Sora',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'The best grain, the finest roast, the',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: text,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Sora-Light',
                      ),
                    ),
                    SizedBox(height: 0),
                    Text(
                      'Powerful Flavor.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: text,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Sora-Light',
                      ),
                    ),
                    SizedBox(height: 10),
                    AppButton( 
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LandPage()),
                        );
                      },
                      backgroundColor: text,
                      text: 'Continue with Google' ,
                      
                      width: 317,
                      height: 54,
                      textColor: buttontext,
                      radius: 10.0,
                      icon: SvgPicture.asset('Assets/Icons/GoogleLogo.svg'), fsize: 20, ffamily: 'Roboto-Regular', fweight: '400', border: Colors.black,  

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
