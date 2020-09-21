import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Flutter Material App Tutorial',
  home: MyButton(),
));
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightBlue,
        ),
        child: Center(
          child: Text('Engage',
          style: TextStyle(
            fontSize: 65.0,
            color: Colors.black
          ) ),
        ),
      ),
    );
  }
}
