import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  IconCard({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(10)
            ),
            child: IconButton(
              icon: Icon(
                iconData,
                size: 30,
                color: Colors.pinkAccent ,
              ), onPressed: () {  },
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 10
            ),
          )
        ],
      ),
    );
  }
}
