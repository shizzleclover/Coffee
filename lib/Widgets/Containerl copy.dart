import 'package:flutter/material.dart';

class ResizableImageContainer extends StatefulWidget {
  final double width;
  final double height;

  const ResizableImageContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<ResizableImageContainer> createState() =>
      _ResizableImageContainerState();
}

class _ResizableImageContainerState extends State<ResizableImageContainer> {
  double _width = 0;
  double _height = 0;

  @override
  void initState() {
    super.initState();
    _width = widget.width;
    _height = widget.height;
  }

  void _setSize(double newWidth, double newHeight) {
    setState(() {
      _width = newWidth;
      _height = newHeight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (details) {
        setState(() {
          _width = _width * details.scale;
          _height = _height * details.scale;
        });
      },
      child: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
            image: AssetImage(
              'Assets/Images/coffee.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.red,
                child: Text(
                  'Promo',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Line 1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Line 2',
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
