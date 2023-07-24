import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icondata;
  final String title;
  IconContent({required this.icondata, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icondata,
          size: 50,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
