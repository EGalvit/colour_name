import 'package:flutter/material.dart';
import 'GetNamePage.dart';

enum Choice{Dad, Mom, Cat, Fatih}
String? name;

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Choice? _choice;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name n color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Main Page")),
          body: Column(
            children: [
              Text("Get name",
                  style: TextStyle(
                    fontSize: 30,
                  )),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GetNamePage()),
                  );
                },
                child: Text("Get name"),
              ),
              Text(name ?? "no name",
                  style: TextStyle(
                    fontSize: 30,
                  )),
              ElevatedButton(
                onPressed: () {

                },
                child: Text("Get color"),
              ),
            ],
          )
      ),
    );
  }
}