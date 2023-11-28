import 'package:flutter/material.dart';

class ElevatedButtonRef extends StatefulWidget {
  const ElevatedButtonRef({super.key});

  @override
  State<ElevatedButtonRef> createState() => _ElevatedButtonRefState();
}
final ButtonStyle style =
ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20));

class _ElevatedButtonRefState extends State<ElevatedButtonRef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Elevated Button'),
          backgroundColor: Colors.teal,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style:style,
                onPressed: null, child: Text('Disabled'),),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: style,
                  onPressed: null, child: Text('Enabled'))
            ],
          ),
        )
    );
  }
}
