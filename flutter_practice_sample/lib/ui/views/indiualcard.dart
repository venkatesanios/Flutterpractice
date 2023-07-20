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
    this.shadowColor = const Color.fromARGB(255, 64, 100, 75),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: shadowColor, // Adjust the elevation for the shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // Custom border radius for the card
      ),
      child: Center(
        child: ListTile(
          leading: Icon(iconData),
          title: Expanded(child: Text(title)),
          subtitle: Flexible(child: Text(description)),
        ),
      ),
    );
  }
}
