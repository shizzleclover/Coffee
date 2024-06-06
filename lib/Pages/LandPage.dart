import 'package:barista/Pages/details.dart';
import 'package:barista/Pages/mappage.dart';
import 'package:barista/Pages/orderpage.dart';
import 'package:barista/Widgets/ContainerBox.dart';
import 'package:barista/Widgets/Containerl%20copy.dart';
import 'package:barista/Widgets/DetailContainer.dart';
import 'package:barista/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key});

  @override
  Widget build(BuildContext context) {
    Color main = const Color.fromRGBO(255, 255, 255, 1);
    Color change = const Color.fromRGBO(198, 124, 78, 1);
    Color border = Color.fromRGBO(234, 234, 234, 1);
    Color body = Color.fromRGBO(249, 249, 249, 1);
    Color text = Color.fromRGBO(155, 155, 155, 1);
    Color button = Color.fromRGBO(255, 240, 240, 1);
    Color M = Color.fromRGBO(255, 245, 238, 1);
    Color bor = Color.fromRGBO(222, 222, 222, 1);
    Color bordM = Color.fromRGBO(198, 124, 78, 1);
    Color text2 = Color.fromRGBO(255, 255, 255, 1);
    Color button2 = Color.fromRGBO(198, 124, 78, 1);
    Color bottombord = Color.fromRGBO(241, 241, 241, 1);
    double lineWidth = 20.0;

    final LinearGradient gradient = LinearGradient(
      colors: [
        Color.fromRGBO(19, 19, 19, 1),
        Color.fromRGBO(49, 49, 49, 1),
      ],
      stops: [0, 0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

         backgroundColor: button2,
      ),
           
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomAppBar(
          elevation: 10,
          color: main,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/homeh.svg',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandPage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/heart.svg',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/shop.svg',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    'Assets/Icons/bell.svg',
                  ),
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
