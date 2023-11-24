import 'package:flutter/material.dart';
import 'package:setion3_flutter/foods.dart';
import 'package:setion3_flutter/my_card.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Foods",style: TextStyle(color: Colors.white,fontSize:22 ),),backgroundColor: Colors.brown),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        return GestureDetector(child: MyCard(recipe: Recipe.samples[index]),onTap: (){//TODO:navigation to detail screen
           },);
      },
      itemCount: Recipe.samples.length,),
    );
  }
}
