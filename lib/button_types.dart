import 'package:flutter/material.dart';
import 'package:flutter_buttons/elevated_button_example.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Types'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: () {}, child: Text('Outlined Button1')),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.teal,
                  backgroundColor: Colors.tealAccent,
                  side: BorderSide(color: Colors.black, width: 10)),
              onPressed: () {},
              child: Text('Outlined Button2'),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.teal,
                  backgroundColor: Colors.tealAccent,
                  side: BorderSide(color: Colors.black, width: 10)),
              onPressed: () {},
              icon: Icon(Icons.add), label: Text('Outlined Button with Button'),),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.teal,
                  backgroundColor: Colors.tealAccent,
                  side: BorderSide(color: Colors.black12, width: 10),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ElevatedButtonRef()));
                },
                icon: Icon(Icons.delete), label: Text('Delete'))
          ],
        ),
      ),
    );
  }
}
