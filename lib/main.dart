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

var stars = Row(
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: EdgeInsets.all(20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

final descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('PREP:'),
              Text('25 min')
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer, color: Colors.green[500],),
              Text('COOK:'),
              Text('1 hr')
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEED:'),
              Text('4-6')
            ],
          )
        ],
      ),
    )
);

var titleText = Text(
  'Strawberry Pavlova',
  style: TextStyle(
    color: Colors.black,
    fontSize: 35,
    fontFamily: 'Roboto'
  ),
);

var subTitle = Text(
  'Pavlova is a meringue-based dessert, named after the Russian ballerina Anna Pavlova.'
      'Pavolva feature a crisp crust and soft, light inside, topped with fruit and whipped cream'
);

final leftColumn = Container(
  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      titleText,
      SizedBox(height: 10,),
      subTitle,
      ratings,
      iconList,
    ],
  ),
);


