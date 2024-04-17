import 'package:flutter/material.dart';

class ContainerList extends StatefulWidget {
  @override
  _ContainerListState createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  Color _selectedColor = Colors.blue; // Default color

  void _updateColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _updateColor(Colors.red);
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: EdgeInsets.all(10),
          ),
        ),
        GestureDetector(
          onTap: () {
            _updateColor(Colors.green);
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            margin: EdgeInsets.all(10),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 100,
          height: 100,
          color: _selectedColor, // Color changes based on the tapped container
        ),
      ],
    );
  }
}
