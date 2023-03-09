import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:icon_forest/icon_forest.dart';
import 'package:mdi/mdi.dart';

class ButtonInfo {
  String name;
  IconData? icon;
  Color color;
  String pageRoute;

  ButtonInfo(this.name, this.icon, this.color, this.pageRoute);
}

class ButtonRowInfo {
  String name;
  IconData icon;
  String pageRoute;
  String duration;

  ButtonRowInfo(this.name, this.icon, this.pageRoute, this.duration);
}

List<ButtonInfo> rowFolderButtons = [
  ButtonInfo('Help', FontAwesomeIcons.font, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Reading', FontAwesomeIcons.book, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'Calendar', FontAwesomeIcons.calendarWeek, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Numbers', FontAwesomeIcons.hashtag, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'People', FontAwesomeIcons.personBooth, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Food and Drink', FontAwesomeIcons.userFriends,
      Colors.brown.shade100, 'tbd'),
  ButtonInfo('Play', FontAwesomeIcons.prescriptionBottleAlt,
      Colors.brown.shade100, 'tbd'),
  ButtonInfo('Home', FontAwesomeIcons.home, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Extra', FontAwesomeIcons.globe, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Draw', FontAwesomeIcons.palette, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Search', FontAwesomeIcons.search, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowCommButtons = [
  ButtonInfo('I', FontAwesomeIcons.smile, Colors.brown.shade100, 'tbd'),
  ButtonInfo('See', FontAwesomeIcons.eye, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'Need', FontAwesomeIcons.handPointLeft, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Yes', FontAwesomeIcons.thumbsUp, Colors.brown.shade100, 'tbd'),
  ButtonInfo('No', FontAwesomeIcons.thumbsDown, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'More', FontAwesomeIcons.handsHelping, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Done', FontAwesomeIcons.handSpock, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'Please', FontAwesomeIcons.handSparkles, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Thank You', FontAwesomeIcons.globe, Colors.brown.shade100, 'tbd'),
  ButtonInfo('I drew', FontAwesomeIcons.palette, Colors.brown.shade100, 'tbd'),
  ButtonInfo('What did you draw?', FontAwesomeIcons.search,
      Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowShapesButtons = [
  ButtonInfo('Circle', Mdi.circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Square', Mdi.square, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Triangle', Mdi.triangle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Rectangle', Mdi.rectangle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Diamond', Mdi.rhombus, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Oval', Icons.circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Star', Icons.star_sharp, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Heart', Mdi.heart, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Cube', Mdi.cubeOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Sphere', Mdi.circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Hexagon', Mdi.hexagon, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowNumberButtons = [
  ButtonInfo('Zero', Mdi.numeric0Circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('One', Mdi.numeric1Box, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Two', Mdi.numeric2Box, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Three', Mdi.numeric3BoxMultiple, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Four', Mdi.numeric4BoxMultiple, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'Five', Mdi.numeric5BoxMultipleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo(
      'Six', Mdi.numeric6BoxMultipleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Seven', Mdi.numeric7Circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Eight', Mdi.numeric8CircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Nine', Mdi.numeric9CircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Ten', Mdi.numeric10BoxOutline, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowColorsButtons = [
  ButtonInfo('Red', null, Colors.red, 'tbd'),
  ButtonInfo('Yellow', null, Colors.yellow, 'tbd'),
  ButtonInfo('Blue', null, Colors.blue, 'tbd'),
  ButtonInfo('Green', null, Colors.green, 'tbd'),
  ButtonInfo('Orange', null, Colors.orange, 'tbd'),
  ButtonInfo('Pink', null, Colors.pink, 'tbd'),
  ButtonInfo('Purple', null, Colors.purple, 'tbd'),
  ButtonInfo('Brown', null, Colors.brown, 'tbd'),
  ButtonInfo('Gray', null, Colors.grey, 'tbd'),
  ButtonInfo('Black', null, Colors.black, 'tbd'),
  ButtonInfo('White', null, Colors.white, 'tbd'),
];

List<ButtonInfo> rowTopKeyboardButtons = [
  ButtonInfo('q', Mdi.alphaQ, Colors.brown.shade100, 'tbd'),
  ButtonInfo('w', Mdi.alphaW, Colors.brown.shade100, 'tbd'),
  ButtonInfo('e', Mdi.alphaE, Colors.brown.shade100, 'tbd'),
  ButtonInfo('r', Mdi.alphaR, Colors.brown.shade100, 'tbd'),
  ButtonInfo('t', Mdi.alphaT, Colors.brown.shade100, 'tbd'),
  ButtonInfo('y', Mdi.alphaY, Colors.brown.shade100, 'tbd'),
  ButtonInfo('u', Mdi.alphaU, Colors.brown.shade100, 'tbd'),
  ButtonInfo('i', Mdi.alphaI, Colors.brown.shade100, 'tbd'),
  ButtonInfo('o', Mdi.alphaO, Colors.brown.shade100, 'tbd'),
  ButtonInfo('p', Mdi.alphaP, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Del', Mdi.backspace, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowMidKeyboardButtons = [
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('A', Mdi.alphaACircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('S', Mdi.alphaSCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('D', Mdi.alphaDCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('F', Mdi.alphaFCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('G', Mdi.alphaGCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('H', Mdi.alphaHCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('J', Mdi.alphaJCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('K', Mdi.alphaKCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('L', Mdi.alphaLCircleOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Enter', Mdi.keyboardReturn, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowLowKeyboardButtons = [
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Z', Mdi.alphaZBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('X', Mdi.alphaXBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('C', Mdi.alphaCBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('V', Mdi.alphaVBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('B', Mdi.alphaBBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('N', Mdi.alphaNBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('M', Mdi.alphaMBox, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowBottomKeyboardButtons = [
  ButtonInfo('up', Mdi.menuUp, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Space', Mdi.keyboardSpace, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo(',', Mdi.comma, Colors.brown.shade100, 'tbd'),
  ButtonInfo('.', Mdi.circleSmall, Colors.brown.shade100, 'tbd'),
  ButtonInfo('!', Mdi.exclamation, Colors.brown.shade100, 'tbd'),
  ButtonInfo('?', Mdi.help, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
];

List<ButtonInfo> rowActivitiesButtons = [
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Bathroom', Mdi.toilet, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Pencil', Mdi.pencil, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Scissors', Mdi.scissorsCutting, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Glue', Icons.circle, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Crayon', Mdi.leadPencil, Colors.brown.shade100, 'tbd'),
  ButtonInfo('Paper', Mdi.noteTextOutline, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
  ButtonInfo('', null, Colors.brown.shade100, 'tbd'),
];
