import 'package:barista/Pages/details.dart';
import 'package:barista/Pages/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandPage extends StatelessWidget {
  const LandPage({super.key});

  @override
  Widget build(BuildContext context) {
     Color main = const Color.fromRGBO(255, 255, 255, 1);
    Color change = const Color.fromRGBO(198, 124, 78, 1);
    return Scaffold(





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
                    // Add functionality for bell button
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