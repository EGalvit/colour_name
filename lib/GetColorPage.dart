import 'package:flutter/material.dart';
enum Choice{Dad, Mom, Cat, Fatih}

class GetColorPage extends StatefulWidget {
  const GetColorPage({super.key});

  // This widget is the root of your application.
  @override
  State<GetColorPage> createState() => _GetColorPageState();
}

class _GetColorPageState extends State<GetColorPage> {
  Choice? _choice;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Name Page")),
        body: Column(
          children: [
            Text("Write the name of your...",
                style: TextStyle(
                  fontSize: 30,
                )),
            for (var value in Choice.values)
              ListTile(
                title: Text(value.name),
                leading: Radio<Choice>(
                  value: value,
                  groupValue: _choice,
                  onChanged: (Choice? value){
                    setState((){
                      _choice = value;
                    });
                  },
                ),
              ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Send name"),
            ),
          ],
        )
    );
  }
}
