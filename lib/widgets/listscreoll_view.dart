import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_color.dart';

class ListWheelScrollViewExampleAge extends StatefulWidget {
  const ListWheelScrollViewExampleAge({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewExampleAge> createState() =>
      _ListWheelScrollViewExampleState();
}

class _ListWheelScrollViewExampleState
    extends State<ListWheelScrollViewExampleAge> {
  final List<String> age =
      List.generate(60, (index) => (18 + index).toString());

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      itemExtent: 90,
      diameterRatio: 1.9,
      childDelegate: ListWheelChildLoopingListDelegate(
        children: List.generate(
          age.length,
          (index) => Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                  border: Border.symmetric(
                      horizontal: BorderSide(
                color: index == _selectedIndex
                    ? AppColors.primaryColor
                    : Colors.white,
              ))),
              child: Row(
                children: [
                  Text(
                    age[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: index == _selectedIndex
                          ? AppColors.primaryColor
                          : Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "  years",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          index == _selectedIndex ? Colors.black : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onSelectedItemChanged: (index) {
        setState(() {
          _selectedIndex = index % age.length;
        });
      },
    );
  }
}
