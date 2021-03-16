import 'package:flutter/material.dart';
import 'package:flutter_navigasiroute_belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(tempItem.name),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff0096ff), Color(0xff6610f2)],
                begin: FractionalOffset.bottomLeft,
                end: FractionalOffset.topRight
              )
            ),
          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text('Weight Item : ' + tempItem.weight),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text('Amount Item : ' + tempItem.amount.toString()),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Text('Price Item  : ' + tempItem.price.toString()),
            ),

            Container(
              width: 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 0.9],
                  colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                    Color(0xff0096ff),
                    Color(0xff6610f2),
                  ],
                ),
              ),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text(
                  'Kembali',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'Candara',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textColor: Colors.white,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)
                ),
                onPressed: () {
                  Navigator.pop(context, '/');
                },
              ),
            )
          ]
          // child: Text(
          //   tempItem.name + " : " + tempItem.price.toString(),
          // ),
        ),
      ),
    );
  }
}