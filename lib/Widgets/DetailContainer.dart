import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  final double width;
  final double height;

  const ImageContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<ImageContainer> createState() =>
      _ResizableImageContainerState();
}

class _ResizableImageContainerState extends State<ImageContainer> {
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
       
      ),
    );
  }
}
