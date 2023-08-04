// import 'package:flutter/material.dart';

// class CustomDropdown extends StatefulWidget {
//   final List<String> items;
//   final String selectedValue;
//   //final Function(String) onChanged;
//   final void Function(String?)? onChanged;

//   CustomDropdown({
//     required this.items,
//     required this.selectedValue,
//     required this.onChanged,
//   });

//   @override
//   _CustomDropdownState createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//     String _selectedValue = '';

//    @override
//   void initState() {
//     super.initState();
//     _selectedValue = widget.selectedValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: _selectedValue,
//       onChanged: widget.onChanged,

//       hint: Text('data'),
//       underline: Container(
//         height: 2,
//         color: Colors.grey,
//       ),
//       items: widget.items.map((String item) {
//         return DropdownMenuItem<String>(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String selectedValue;

  CustomDropdown({
    required this.items,
    required this.selectedValue,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String _selectedValue = '';

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedValue,
      onChanged: (newValue) {
        setState(() {
          _selectedValue = newValue!;
        });
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        labelText: 'Select an item',
        //  underline: Container(
        //   height: 2,
        //   color: Colors.transparent,
        // ),
      ),
      items: widget.items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }
}
