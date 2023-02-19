import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  // //orientation ni faqat portret rehimda chiqishi uchun
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter orientation app"),
      ),
      body: isPortrait
          ? Container(
        child: Column(
          children: [
            Container(
              height: size.height*0.5,
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(20),
            ),
            Container(
              height: size.height*0.2,
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(20),
            )
          ],
        ),
      )
          : Container(color: Colors.blue,)
    );
  }
}
