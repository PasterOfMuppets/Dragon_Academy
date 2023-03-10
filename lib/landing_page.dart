import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

void main() => runApp(
      const MaterialApp(
        home: LandingPage(),
      ),
    );

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
              Colors.grey,
              Colors.black,
            ], radius: 0.85, focal: Alignment.center),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                    mainAxisSpacing: 35,
                    crossAxisSpacing: 35,
                    children: [
                      const ModuleCard(
                          moduleName: 'Communicator',
                          moduleImage: Mdi.accountVoice),
                      const ModuleCard(
                          moduleImage: Mdi.weightLifter,
                          moduleName: 'Exercise'),
                      const ModuleCard(
                          moduleImage: Mdi.chairSchool, moduleName: 'Classes'),
                      const ModuleCard(
                          moduleImage: Mdi.toothbrush,
                          moduleName: 'Personal Care'),
                      const ModuleCard(
                          moduleName: 'Games', moduleImage: Mdi.gamepad),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ModuleCard extends StatelessWidget {
  const ModuleCard({required this.moduleImage, required this.moduleName});

  final String moduleName;
  final IconData moduleImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Somebody pushed the $moduleName button!');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[200],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Icon(
              moduleImage,
              size: 100.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              moduleName,
              style: const TextStyle(
                fontSize: 40.0,
                color: Color(0xFF8D8E98),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
