import 'package:flutter/material.dart';
import 'package:dragon_academy/lists.dart';
// import 'package:icon_forest/icon_forest.dart';
import 'package:auto_size_text/auto_size_text.dart';
// import 'package:mdi/mdi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dragon Academy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dragon Academy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String consoleOutputString = '';
  List<String> consoleOutputList = [];

  Container blankRow() {
    return Container(
      height: 70,
      margin: EdgeInsets.all(2),
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
          margin: EdgeInsets.all(2),
          color: listOfKeys[index].color,
          child: TextButton(
            child: Column(
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
                    style: TextStyle(color: Colors.black, fontSize: 5),
                  ),
                ),
              ],
            ),
            onPressed: () {
              print(listOfKeys[index].name);
              setState(() {
                if (listOfKeys[index].name == 'Del') {
                  consoleOutputList.removeLast();
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 70,
              margin: EdgeInsets.all(2),
              color: Colors.grey,
              child: Text(
                consoleOutputString,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            blankRow(),
            blankRow(),
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
    );
  }
}
