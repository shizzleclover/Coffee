import 'package:barista/Pages/mappage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:barista/Pages/details.dart';
import 'package:barista/Widgets/button.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key});

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
    Color back = Color.fromRGBO(240, 240, 240, 1);
    double lineWidth = 20.0;
    double buttonSpacing = 16.0;  
    double textPadding = 8.0;  
    double bottomBarHeight = 140.0;  
    double bottomBarPadding = 20.0;
    double containerWidth = 350.0;  
    double containerHeight = 60.0;  

    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
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
                              MaterialPageRoute(builder: (context) => DetailPage()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Order',
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 45),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: back,
                  ),
                  width: containerWidth,
                  height: containerHeight,
                  padding: EdgeInsets.all(5.5),  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppButton(
                        backgroundColor: button2,
                        text: "Deliver",
                        width: 200,
                        height: 60,
                        textColor: text2,
                        fsize: 16,
                        ffamily: 'Sora',
                        fweight: "600",
                        icon: null,
                        radius: 15,
                        onTap: () {},
                        border: border,
                      ),
                      Text(
                        'Pick Up',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: containerWidth,  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Address',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Sora',
                        ),
                      ),
                      Text(
                        'Jl. Kpg Sutoyo',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Sora',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                        style: TextStyle(
                          color: text,
                          fontFamily: 'Sora',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: AppButton(
                              backgroundColor: Colors.white,
                              text: 'Edit Address',
                              width: 120,
                              height: 27,
                              textColor: Colors.black,
                              fsize: 12,
                              ffamily: 'Sora',
                              fweight: '500',
                              icon: SvgPicture.asset('Assets/Icons/edit.svg'),
                              radius: 16,
                              onTap: () {},
                              border: border,
                            ),
                          ),
                          SizedBox(width: 18),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: AppButton(
                              backgroundColor: Colors.white,
                              text: 'Add Note',
                              width: 120,
                              height: 27,
                              textColor: Colors.black,
                              fsize: 12,
                              ffamily: 'Sora',
                              fweight: '500',
                              icon: SvgPicture.asset('Assets/Icons/note.svg'),
                              radius: 16,
                              onTap: () {},
                              border: border,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 5, color: border),
                      SizedBox(height: 10),
                      Image.asset('Assets/Images/capframe.png', width: containerWidth),
                      SizedBox(height: 10),
                      Divider(thickness: 5, color: border),
                      SizedBox(height: 20),
                      AppButton(
                        backgroundColor: border,
                        text: '1 Discount is applied',
                        width: containerWidth,
                        height: 55,
                        textColor: Colors.black,
                        fsize: 17,
                        ffamily: 'Sora',
                        fweight: '400',
                        icon: SvgPicture.asset('Assets/Icons/leftarrow'),
                        radius: 14,
                        onTap: () {},
                        border: border,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Payment Summary',
                        style: TextStyle(
                          fontSize: 25,
                        
                          fontFamily: 'Sora',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Price                                           \$4.50',
                        style: TextStyle(
                          fontSize: 20,
                           
                          fontFamily: 'Sora',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Delivery Fee                            \$2.0',
                        style: TextStyle(
                          fontSize: 20,
                          
                          fontFamily: 'Sora',
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 5, color: border),
                      SizedBox(height: 10),
                      Text(
                        'Total Payment                         \$5.53',
                        style: TextStyle(
                          fontSize: 20,
                          
                          fontFamily: 'Sora',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: bottomBarHeight,
        decoration: BoxDecoration(
          color: body,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          border: Border.all(color: bottombord, width: 3),
        ),
        padding: EdgeInsets.symmetric(horizontal: bottomBarPadding, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              backgroundColor: button2,
              text: 'Order',
              width: containerWidth,
              height: 55,
              textColor: text2,
              fsize: 16,
              ffamily: 'Sora',
              fweight: '600',
              icon: null,
              radius: 16,
              border: border,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
