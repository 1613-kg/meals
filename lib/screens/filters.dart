import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class Filters extends StatefulWidget {
  static const routeName = '/Filters';

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var _glutenFree = false;
  var _vegeterian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSelectitem(
      String title, String desc, var currVal, Function updateVal) {
    return SwitchListTile(
      value: currVal,
      title: Text(title),
      subtitle: Text(desc),
      onChanged: updateVal(currVal  ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filter!"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildSelectitem(
                  'Gluten Free', 'Only include gluten free meals', _glutenFree,
                  (newValue) {
                setState(() {
                  _glutenFree = newValue;
                });
              }),
              _buildSelectitem('Lactose Free',
                  'Only include Lactose free meals', _lactoseFree, (newValue) {
                setState(() {
                  _lactoseFree = newValue;
                });
              }),
              _buildSelectitem('Vegan', 'Only include vegan meals', _vegan,
                  (newValue) {
                setState(() {
                  _vegan = newValue;
                });
              }),
              _buildSelectitem(
                  'Vegeterian', 'Only include vegetrian meals', _vegeterian,
                  (newValue) {
                setState(() {
                  _vegeterian = newValue;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}
