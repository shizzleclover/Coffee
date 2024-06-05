import 'package:barista/Pages/LandPage.dart';
import 'package:barista/Pages/homepage.dart';
import 'package:barista/Pages/orderpage.dart';
import 'package:barista/Widgets/Contain.dart';
import 'package:barista/Widgets/ContainerBox.dart';
import 'package:barista/Widgets/Iconbutton.dart';
import 'package:barista/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
    double buttonSpacing = 16.0; // Editable space between buttons and text
    double textPadding = 8.0; // Padding for text to align with image
    double bottomBarHeight = 200.0; // Editable height of the bottom bar
    double bottomBarPadding = 20.0;

    return Scaffold(
      backgroundColor: body,
      body: SafeArea(
        child: SingleChildScrollView(
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
                            MaterialPageRoute(builder: (context) => LandPage()),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Order',
                    style: TextStyle(
                      fontFamily: 'Sora-Light',
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(width: 45), // Maintain the space
                ],
              ),
             RegularContainer(
              child:AppButton(
                backgroundColor: button2, 
                text: "Deliver",
                 width: 154,
                  height: 40, 
                  textColor: text2,
                   fsize: 16,
                    ffamily: 'Sora-Regular',
                     fweight: "600", 
                     icon: null, 
                     radius: 10, 
                     onTap: (){},
                      border: border
                      ),
              width: 400,
              height: 48, 
              background: back,
              ),

              SizedBox(height: 20),
     Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery Address',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Sora-Regular',
                                  ),
                                ),
                                Text(
                                  'Jl. Kpg Sutoyo',
                                  style: TextStyle(
                                    color: text,
                                    fontFamily: 'Sora-Regular',
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                                      style: TextStyle(
                                        color: text,
                                        fontFamily: 'Sora-Regular',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                            children: [
                                SizedBox(width: 18),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: AppButton(backgroundColor: Colors.white, text: 'Edit Address', width: 120, height: 27, textColor: Colors.black, fsize: 12, ffamily: 'Sora-Regular', fweight: '500', icon: SvgPicture.asset('Assets/Icons/edit.svg'), radius: 16, onTap: (){}, border: border)
                              ),
                              SizedBox(width: 18),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: AppButton(backgroundColor: Colors.white, text: 'Add Note', width: 120, height: 27, textColor: Colors.black, fsize: 12, ffamily: 'Sora-Regular', fweight: '500', icon: SvgPicture.asset('Assets/Icons/note.svg'), radius: 16, onTap: (){}, border: border)
                
                              ),
                              
                            ],
                          ),
                          Divider(thickness: 5, color: border),

            ],         
          ),
        ),

      
            ],
        ),
            ],
      ),
        ),
      ),
    );
  }
}
