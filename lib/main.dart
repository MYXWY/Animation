import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool takeOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animation_409631115'),
      ),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              left: 50.0,
              right: 50.0,
              top: takeOff ? 15.0 : 600.0,
              duration: const Duration(seconds: 3),
              curve: Curves.easeInOut,
              child: const Icon(
                  Icons.airplanemode_active,
                  color: Colors.blue,
                  size: 55.0
              ),
            ),

            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.blue),
                  foregroundColor: MaterialStateProperty.all(
                      Colors.white),
                ),
                icon: const Icon(Icons.airplanemode_active, color: Colors.white),
                label: const Text('飛機起飛'),
                onPressed: () => {
                  setState(() {
                    takeOff = !takeOff;
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}