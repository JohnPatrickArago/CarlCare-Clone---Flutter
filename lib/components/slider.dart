import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 150,
          width: 500,
          child: PageView(
            controller: _pageController,
            children: [
              _buildPage("", const Color.fromARGB(255, 1, 141, 255)),
              _buildPage("", const Color.fromARGB(255, 0, 101, 184)),
              _buildPage("", const Color.fromARGB(255, 1, 69, 124)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
