import 'package:barista/Pages/orderpage.dart';
import 'package:barista/Widgets/ButtonIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MapPage extends StatelessWidget {
  final Color border = Color.fromRGBO(234, 234, 234, 1);
  final Color txt = Color.fromRGBO(128, 128, 128, 1);
  final Color body = Color.fromRGBO(249, 249, 249, 1);
  final Color text = Color.fromRGBO(155, 155, 155, 1);
  final Color button = Color.fromRGBO(255, 240, 240, 1);
  final Color M = Color.fromRGBO(255, 245, 238, 1);
  final Color bor = Color.fromRGBO(222, 222, 222, 1);
  final Color bordM = Color.fromRGBO(198, 124, 78, 1);
  final Color text2 = Color.fromRGBO(255, 255, 255, 1);
  final Color button2 = Color.fromRGBO(198, 124, 78, 1);
  final Color bottombord = Color.fromRGBO(241, 241, 241, 1);
  final Color back = Color.fromRGBO(240, 240, 240, 1);
  final double lineWidth = 20.0;
  final double buttonSpacing = 16.0;  
  final double textPadding = 8.0; // Padding for text to align with image
  final double bottomBarHeight = 370.0; // Editable height of the bottom bar
  final double bottomBarPadding = 20.0;
  final double containerWidth = 350.0; // Editable width of the container
  final double containerHeight = 107.0; // Editable height of the container
  final double fabSize = 24.0;  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: FloatingActionButton(
                backgroundColor: body,
              onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );
              },
              child: SvgPicture.asset(
                'Assets/Icons/leftarrow.svg',  
                width: fabSize,
                height: fabSize,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: FloatingActionButton(
              backgroundColor: body,
              onPressed: () {
                
              },
              child: SvgPicture.asset(
                'Assets/Icons/gps.svg', // Adjust with your SVG path
                width: fabSize,
                height: fabSize,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'Assets/Images/maps.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ),
      bottomNavigationBar: Container(
        height: bottomBarHeight,
        decoration: BoxDecoration(
          color: body,
          border: Border.all(color: bottombord, width: 3),
        ),
        padding: EdgeInsets.symmetric(horizontal: bottomBarPadding, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '10 minutes left',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Delivery to Jl. Kpg Sutoyo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10), // Space between text and SVG
                Row(
                  children: [
                    SizedBox(width: 15),
                    SvgPicture.asset(
                      'Assets/Icons/green.svg', // Adjust with your SVG path
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'Assets/Icons/green.svg', // Adjust with your SVG path
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'Assets/Icons/green.svg', // Adjust with your SVG path
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'Assets/Icons/white.svg', // Adjust with your SVG path
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20), // Space between text and "Delivered your order" container
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
              child: Container(
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: text2,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: border),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('Assets/Icons/bike.svg'),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivered your order',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 4), // Adding space between header and description
                          Text(
                            'We deliver your goods to you in the shortest possible time.',
                            style: TextStyle(
                              color: txt,
                              fontSize: 14,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 0), // Space between "Delivered your order" container and second container
            Container(
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                color: body,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 64,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('Assets/Images/Image.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Johan Hawn',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4), // Adding space between header and description
                              Text(
                                'Personal Courier',

                                style: TextStyle(
                                  color: txt,
                                  fontSize: 14,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  ButtonIco(
                    bord: bor,
                    backgroundColor: text2,
                    width: 54,
                    height: 54,
                    radius: 14,
                    onTap: () {},
                    svgPath: 'Asset/Icons/Call.svg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
