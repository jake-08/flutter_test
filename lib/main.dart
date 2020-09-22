import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    title: 'Flutter layout demo',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  child: leftColumn,
                ),
                //Image.network('https://www.thespruceeats.com/thmb/Kco8yJVmHa7sh0z5sjxUeO7_Cwo=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/australian-pavlova-recipe-256101-hero-01-f0bd5d2a3f0b4ec383fe8d16b8600bc9.jpg')
              ],
            ),
          ),
        )
      ),
    )
));




