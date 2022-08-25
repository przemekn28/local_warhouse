import 'package:flutter/material.dart';
import 'package:local_warhouse/model/category.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<Category> categories = [Category(id: 1, name: 'test 1', items: null)];

  @override
  Widget build(BuildContext context) {
    int size = categories.length;
    return size > 0
        ? ListView.builder(
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              final item = categories[index];
              //int size = categories.length;
              return Center(child: ListTile(title: Text(item.name)));
            }),
          )
        : Center(child: CircularProgressIndicator());
  }
}
