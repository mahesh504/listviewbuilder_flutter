import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// Dummy List array create
  var dummyitems = List<String>.generate(1000, (index) => 'item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview in flutter'),
      ),
      body: ListView.builder(
          itemCount: dummyitems.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text(dummyitems[index]),
            ));
          }),
    );
  }
}
