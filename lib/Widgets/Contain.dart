import 'package:barista/Widgets/button.dart';
import 'package:flutter/material.dart';

class RegularContainer extends StatefulWidget {
  final double width;
  final Color background;
  final double height;

  const RegularContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.background, required AppButton child,
  }) : super(key: key);

  @override
  State<RegularContainer> createState() => _RegularContainerState();
}

class _RegularContainerState extends State<RegularContainer> {
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
          color: widget.background, // Use widget.background here
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
