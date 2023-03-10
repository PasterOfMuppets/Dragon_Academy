import 'package:flutter/material.dart';
import 'package:dragon_academy/lists.dart';
// import 'package:icon_forest/icon_forest.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:mdi/mdi.dart';

class CommunicatorPage extends StatefulWidget {
  const CommunicatorPage({super.key, required this.title});

  final String title;

  @override
  State<CommunicatorPage> createState() => _CommunicatorPageState();
}

class _CommunicatorPageState extends State<CommunicatorPage> {
  String consoleOutputString = '';
  List<String> consoleOutputList = [];

  Container blankRow() {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(2),
      color: Colors.white24,
    );
  }

  Row rowOfKeys(List<ButtonInfo> listOfKeys) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(11, (index) {
        return Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.all(2),
          color: listOfKeys[index].color,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              // shadowColor: Colors.red,
              // elevation: 200,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Icon(
                    listOfKeys[index].icon,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: AutoSizeText(
                    listOfKeys[index].name,
                    maxLines: 1,
                    style: const TextStyle(color: Colors.black, fontSize: 5),
                  ),
                ),
              ],
            ),
            onPressed: () {
              print(listOfKeys[index].name);
              setState(() {
                if (listOfKeys[index].name == 'Del') {
                  if (consoleOutputList.isNotEmpty) {
                    consoleOutputList.removeLast();
                  }
                } else {
                  consoleOutputList.add(listOfKeys[index].name);
                }
                consoleOutputString = consoleOutputList.join(' ');
                print('new consoleOutputString is $consoleOutputString');
              });
            },
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 70,
                margin: const EdgeInsets.all(2),
                color: Colors.grey,
                child: Text(
                  consoleOutputString,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              rowOfKeys(rowFolderButtons),
              rowOfKeys(rowFolderButtons),
              rowOfKeys(rowFolderButtons),
              rowOfKeys(rowFolderButtons),
              rowOfKeys(rowActivitiesButtons),
              rowOfKeys(rowCommButtons),
              rowOfKeys(rowNumberButtons),
              rowOfKeys(rowColorsButtons),
              rowOfKeys(rowShapesButtons),
              rowOfKeys(rowTopKeyboardButtons),
              rowOfKeys(rowMidKeyboardButtons),
              rowOfKeys(rowLowKeyboardButtons),
              rowOfKeys(rowBottomKeyboardButtons),
            ],
          ),
        ),
      ),
    );
  }
}
