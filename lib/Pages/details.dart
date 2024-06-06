import 'package:barista/Pages/LandPage.dart';
import 'package:barista/Pages/homepage.dart';
import 'package:barista/Pages/mappage.dart';
import 'package:barista/Pages/orderpage.dart';
import 'package:barista/Widgets/ContainerBox.dart';
import 'package:barista/Widgets/DetailContainer.dart';
import 'package:barista/Widgets/Iconbutton.dart';
import 'package:barista/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
    double buttonSpacing = 16.0; // Editable space between buttons and text
    double textPadding = 8.0; // Padding for text to align with image
    double bottomBarHeight = 200.0; // Editable height of the bottom bar
    double bottomBarPadding = 20.0;

    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(
                              'Assets/Icons/leftarrow.svg',
                              width: 30,
                              height: 30,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LandPage()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Detail',
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'Assets/Icons/Hea.svg',
                          width: 30,
                          height: 30,
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OrderPage()),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ImageContainer(width: 450, height: 300),
                SizedBox(height: 20),
                Container(
                  width: 450, // Aligns the container with the image width
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: textPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cappuccino',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Sora',
                                    ),
                                  ),
                                  Text(
                                    'with Chocolate',
                                    style: TextStyle(
                                      color: text,
                                      fontFamily: 'Sora',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        '4.8 ',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontFamily: 'Sora',
                                        ),
                                      ),
                                      Text(
                                        '(230)',
                                        style: TextStyle(
                                          color: text,
                                          fontFamily: 'Sora',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: buttonSpacing),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: ButtonIcon(
                                    backgroundColor: M,
                                    width: 44,
                                    height: 44,
                                    icon: SvgPicture.asset('Assets/Icons/bean.svg'),
                                    radius: 16,
                                    onTap: () {},
                                  ),
                                ),
                                SizedBox(width: 18),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: ButtonIcon(
                                    backgroundColor: button,
                                    width: 44,
                                    height: 44,
                                    icon: SvgPicture.asset('Assets/Icons/milk.svg'),
                                    radius: 14,
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(thickness: 5, color: border),
                        SizedBox(height: 5),
                        Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Sora',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo.. Read More',
                          style: TextStyle(
                            fontSize: 16,
                            color: text,
                            fontFamily: 'Sora',
                          ),
                        ),
                        Text(

                          ' Read More',
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Sora',
                          ),
                        ),
                        SizedBox(height: 5, ),
                      
                        Row(
                          children: [
                            AppButton(
                              backgroundColor: Colors.white,
                              text: 'S',
                              width: 100,
                              height: 60,
                              textColor: Colors.black,
                              fsize: 14,
                              ffamily: 'Sora',
                              fweight: '400',
                              icon: null,
                              radius: 12,
                              onTap: () {},
                              border: bor,
                            ),
                            SizedBox(width: 15),
                            AppButton(
                              backgroundColor: M,
                              text: 'M',
                              width: 100,
                              height: 60,
                              textColor: Colors.black,
                              fsize: 14,
                              ffamily: 'Sora',
                              fweight: '400',
                              icon: null,
                              radius: 12,
                              onTap: () {},
                              border: bordM,
                            ),
                            SizedBox(width: 15),
                            AppButton(
                              backgroundColor: Colors.white,
                              text: 'L',
                              width: 100,
                              height: 60,
                              border: bor,
                              textColor: Colors.black,
                              fsize: 16,
                              ffamily: 'Sora',
                              fweight: '400',
                              icon: null,
                              radius: 12,
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
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          border: Border.all(color: bottombord, width: 3),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomAppBar(
            color: body,
            child: Container(
              height: bottomBarHeight,
              padding: EdgeInsets.symmetric(horizontal: bottomBarPadding, vertical: 0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 13,
                            color: text,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Sora',
                          ),
                        ),
                        Text(
                          '\$4.53',
                          style: TextStyle(
                            color: button2,
                            fontSize: 25,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: buttonSpacing),
                  AppButton(
                    backgroundColor: button2,
                    text: 'Buy Now',
                    width: 217,
                    height: 55,
                    textColor: text2,
                    fsize: 16,
                    ffamily: 'Sora',
                    fweight: '600',
                    icon: null,
                    radius: 16,
                    onTap: () {


 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );                       
                            
                    },
                    border: border,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
