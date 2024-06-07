import 'package:barista/Pages/details.dart';
import 'package:barista/Pages/mappage.dart';
import 'package:barista/Pages/orderpage.dart';
import 'package:barista/Widgets/ButtonIcon.dart';
import 'package:barista/Widgets/ContainerBox.dart';
import 'package:barista/Widgets/DetailContainer.dart';
import 'package:barista/Widgets/addbuttonicon.dart';
import 'package:barista/Widgets/button.dart';
import 'package:barista/Widgets/searchbuttonicon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandPage extends StatelessWidget {
  const LandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color main = const Color.fromRGBO(255, 255, 255, 1);
    Color change = const Color.fromRGBO(198, 124, 78, 1);
    Color border = const Color.fromRGBO(234, 234, 234, 1);
    Color body = const Color.fromRGBO(249, 249, 249, 1);
    Color text = const Color.fromRGBO(155, 155, 155, 1);
    Color button = const Color.fromRGBO(255, 240, 240, 1);
    Color M = const Color.fromRGBO(255, 245, 238, 1);
    Color bor = const Color.fromRGBO(222, 222, 222, 1);
    Color bordM = const Color.fromRGBO(198, 124, 78, 1);
    Color text2 = const Color.fromRGBO(255, 255, 255, 1);
    Color button2 = const Color.fromRGBO(198, 124, 78, 1);
    Color bottombord = const Color.fromRGBO(241, 241, 241, 1);
    Color cunt = const Color.fromRGBO(47, 75, 78, 1);
    double lineWidth = 20.0;

    final LinearGradient gradient = const LinearGradient(
      colors: [
        Color.fromRGBO(49, 49, 49, 1),
        Color.fromRGBO(19, 19, 19, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: gradient,
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 16,
                right: 16,
              ),
              child: Column(
                children: [
                  Container(
                    height: kToolbarHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Sora",
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Blizen, Tanjugubali',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: "Sora",
                                  ),
                                ),
                                SizedBox(width: 4),
                                SvgPicture.asset(
                                  'Assets/Icons/arrowD.svg',
                                  color: Colors.white,
                                  width: 16,
                                  height: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('Assets/Images/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(49, 49, 49, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: SvgPicture.asset(
                            'Assets/Icons/search.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Positioned.fill(
                          left: 50,
                          right: 180,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(49, 49, 49, 1),
                                hintText: 'Search coffee',
                                hintStyle: TextStyle(
                                  fontFamily: 'Sora',
                                  color:  text,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 4,
                          child: ButtonIcons(
                            backgroundColor: button2,
                            svgPath: 'Assets/Icons/fill.svg',
                            width: 47,
                            height: 47,
                            radius: 12,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 370,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('Assets/Images/home.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 370,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppButton(
                    backgroundColor: change,
                    text: 'Cappuccino',
                    width: 120,
                    height: 45,
                    textColor: Colors.white,
                    fsize: 14,
                    ffamily: 'Sora',
                    fweight: '400',
                    icon: null,
                    radius: 15,
                    onTap: () {},
                    border: bor,
                  ),
                  AppButton(
                    backgroundColor: Color.fromRGBO(243, 243, 243, 1),
                    text: 'Machiato',
                    width: 120,
                    height: 45,
                    textColor: cunt,
                    fsize: 14,
                    ffamily: 'Sora',
                    fweight: '400',
                    icon: null,
                    radius: 15,
                    onTap: () {},
                    border: Color.fromRGBO(243, 243, 243, 1),
                  ),
                  AppButton(
                    backgroundColor: Color.fromRGBO(243, 243, 243, 1),
                    text: 'Latte',
                    width: 120,
                    height: 45,
                    border: Color.fromRGBO(243, 243, 243, 1),
                    textColor: cunt,
                    fsize: 16,
                    ffamily: 'Sora',
                    fweight: '400',
                    icon: null,
                    radius: 15,
                    onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  width: 370,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('Assets/Images/order.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Cappuccino',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'With Chocolate',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Sora',
                                  color: text,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.53',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cunt,
                                    ),
                                  ),
                                  ButtonIcons2(
                                    backgroundColor: button2,
                                    svgPath: 'Assets/Icons/add.svg',
                                    width: 32,
                                    height: 32,
                                    radius: 8,
                                    onTap: () {
                                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('Assets/Images/order.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Cappuccino',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'With Chocolate',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Sora',
                                  color: text,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.00',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cunt,
                                    ),
                                  ),
                                  ButtonIcons2(
                                    backgroundColor: button2,
                                    svgPath: 'Assets/Icons/plus.svg',
                                    width: 32,
                                    height: 32,
                                    radius: 8,
                                    onTap: () {

                                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 370,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('Assets/Images/order.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Espresso',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Strong and bold',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Sora',
                                  color: text,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$3.00',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cunt,
                                    ),
                                  ),
                                  ButtonIcons2(
                                    backgroundColor: button2,
                                    svgPath: 'Assets/Icons/add.svg',
                                    width: 32,
                                    height: 32,
                                    radius: 8,
                                    onTap: () {
                                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage('Assets/Images/order.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Latte',
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Smooth and milky',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Sora',
                                  color: text,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.00',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cunt,
                                    ),
                                  ),
                                  ButtonIcons2(
                                    backgroundColor: button2,
                                    svgPath: 'Assets/Icons/add.svg',
                                    width: 32,
                                    height: 32,
                                    radius: 8,
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
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
