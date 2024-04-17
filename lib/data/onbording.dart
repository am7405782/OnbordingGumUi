import 'package:flutter_application_1/data/model/onbording_model.dart';
import 'package:flutter_application_1/widgets/activity_level.dart';
import 'package:flutter_application_1/widgets/hight_sclator.dart';
import 'package:flutter_application_1/widgets/itemspageone.dart';
import 'package:flutter_application_1/widgets/listscreoll_view.dart';
import 'package:flutter_application_1/widgets/medical.dart';
import 'package:flutter_application_1/widgets/widget_sclator.dart';
import 'package:flutter_application_1/widgets/workout.dart';

List<OnBordingModel> onBordingList = [
  OnBordingModel(
    titleone: "Select Your Gender",
    title2: "Help us to understand you better",
    body: const ItemsPageone(),
    // body: HiddenCardAnimation(),
  ),
  OnBordingModel(
    titleone: "Enter Your Age",
    title2: "Your age helps us design sutable \n fitness program",
    body: const ListWheelScrollViewExampleAge(),
  ),
  OnBordingModel(
    titleone: "Enter Your Height",
    title2: "Please provide your height \n in centimeters",
    body: const ListWheelScrollViewExampleHighe(),
  ),
  OnBordingModel(
    titleone: "Enter Your Weight",
    title2: "Please provide your weight in kilograms",
    body: const ListWheelScrollViewExampleWidget(),
  ),
  OnBordingModel(
    titleone: "Select Your Activity Level",
    title2:
        "Tell us about your daily activity level to \n provide a butter fitness program    ",
    body: const CardListActivty(),
  ),
  OnBordingModel(
    titleone: "Set Your Workout Goal",
    title2:
        "what’s your primary fitness goal we’ll create \na plan to help you acheive it    ",
    body: const WorkOutList(),
  ),
  OnBordingModel(
    titleone: "Select Your Medical History",
    title2: "What medical disease are you suffering \n from?",
    body: const MedicalList(),
  ),
];
