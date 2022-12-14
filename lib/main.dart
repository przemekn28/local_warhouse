import 'package:flutter/material.dart';
import 'package:local_warhouse/view/category_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local warhouse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local warhouse'),
        ),
        body: CategoryView(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Dodaj lokalizację'),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
