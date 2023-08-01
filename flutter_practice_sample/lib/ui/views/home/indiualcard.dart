import 'package:flutter/material.dart';

class IndividualCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData iconData;
  final Color? shadowColor;

  const IndividualCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconData,
    this.shadowColor = const Color.fromARGB(255, 242, 230, 162),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        //color: Color.fromARGB(255, 232, 222, 111),
        elevation: 4,
        shadowColor: shadowColor, // Adjust the elevation for the shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(iconData),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
