import 'package:flutter/material.dart';
import 'package:setion3_flutter/foods.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image(
              image: NetworkImage(widget.recipe.imageUrl),
            ),
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 25,
              fontFamily: 'Palatino',
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredients[index];
                return Text(
                  "${ingredient.quantity*sliderVal}"
                  "${ingredient.measure}"
                  "${ingredient.name}",
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                    fontFamily: 'Palatino',
                  ),
                );
              },
              itemCount: widget.recipe.ingredients.length,
            ),
          ),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            value: sliderVal.toDouble(),
            onChanged: (newVal) {
              setState(() {
                sliderVal = newVal.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}
