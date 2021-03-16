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

        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight Item : ' + tempItem.weight,),
              Text('Amount Item : ' + tempItem.amount.toString()),
              Text('Price Item  : ' + tempItem.price.toString()),
            ],
          ),
          // child: Text(
          //   tempItem.name + " : " + tempItem.price.toString(),
          // ),
        ),
      ),
    );
  }
}