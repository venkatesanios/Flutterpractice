import 'package:flutter/material.dart';
import 'package:flutter_practice_sample/ui/views/home/indiualcard.dart';

class Homepageview extends StatefulWidget {
  const Homepageview({super.key});

  @override
  State<Homepageview> createState() => _HomepageviewState();
}

class _HomepageviewState extends State<Homepageview> {
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Service Request',
      'description': 'Description for Service Request',
      'iconData': Icons.miscellaneous_services_outlined,
    },
    {
      'title': 'Chat',
      'description': 'Description for Chat',
      'iconData': Icons.mark_chat_read_outlined,
    },
    {
      'title': 'Customer List',
      'description': 'Description for Customer List',
      'iconData': Icons.list,
    },
    {
      'title': 'Device List',
      'description': 'Description for Device List',
      'iconData': Icons.featured_play_list,
    },
    {
      'title': 'Sell to Customer',
      'description': 'Description for Sell to Customer',
      'iconData': Icons.shopping_cart,
    },
    {
      'title': 'Service Request',
      'description': 'Description for Card 1',
      'iconData': Icons.miscellaneous_services_outlined,
    },
    {
      'title': 'Chat',
      'description': 'Description for Card 2',
      'iconData': Icons.mark_chat_read_outlined,
    },
    {
      'title': 'Customer List',
      'description': 'Description for Card 3',
      'iconData': Icons.list,
    },
    {
      'title': 'Device List',
      'description': 'Description for Card 4',
      'iconData': Icons.featured_play_list,
    }, //
    {
      'title': 'Sell to Customer',
      'description': 'Description for Card 5',
      'iconData': Icons.shopping_cart,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Color.fromARGB(206, 245, 186, 10),
      ),
      body: Container(
        //Color.fromARGB(206, 245, 186, 10),Color.fromARGB(255, 252, 242, 217),
        color: Color.fromARGB(255, 252, 242, 217),
        child: GridView.builder(
          padding: const EdgeInsets.all(40),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 30, // Spacing between columns
            mainAxisSpacing: 20, // Spacing between rows
          ),
          itemCount: cardData.length,
          itemBuilder: (context, index) {
            final cardInfo = cardData[index];
            return IndividualCard(
              title: cardInfo['title'],
              description: cardInfo['description'],
              iconData: cardInfo['iconData'],
            );
          },
        ),
      ),
    );
  }
}
