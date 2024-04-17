import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/assets.dart';
import 'package:flutter_application_1/data/model/activity_model.dart';
import 'package:flutter_application_1/widgets/custom_card.dart';

class MedicalList extends StatefulWidget {
  const MedicalList({super.key});

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<MedicalList> {
  int selectedCardIndex = -1;

  List<ActivityModel> cardTitles = [
    ActivityModel(text: "Food allergies", image: AppImage.food),
    ActivityModel(text: "Chronic illnesses", image: AppImage.hart),
    ActivityModel(text: "Injury or surgery history ", image: AppImage.injury),
    ActivityModel(text: "Other", image: AppImage.other),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: cardTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCardIndex = index;
                });
              },
              child: CustomCard(
                title: cardTitles[index].text!,
                image: cardTitles[index].image!,
                isSelected: selectedCardIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
