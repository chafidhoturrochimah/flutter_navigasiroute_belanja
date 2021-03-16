import 'package:flutter/material.dart';
import 'package:flutter_navigasiroute_belanja/models/item.dart';
import 'package:flutter_navigasiroute_belanja/pages/item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', weight: '500 gr', amount: 100, price: 5000),
    Item(name: 'Salt', weight: '500 gr', amount: 100, price: 2000),
    Item(name: 'Onion', weight: '1 kg', amount: 100, price: 10000),
    Item(name: 'Ketchup', weight: '500 ml', amount: 100, price: 5000),
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
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
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index){
              final item = items[index];
              return InkWell (
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                    builder: (context) => ItemPage(tempItem: item)
                    ),
                  );
                },

                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                          child: Text(
                            item.price.toString(), 
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ) ,
                ),
              );
            },
          ),
        ),
      ),

    );
    
  }
}