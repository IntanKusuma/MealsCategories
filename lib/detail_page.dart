import 'package:flutter/material.dart';
import 'package:responsi/categories_model.dart';

class DetailPage extends StatelessWidget {
  final Categories category;

  const DetailPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.strCategory!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              category.strCategoryThumb!,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              '${category.strCategory}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              '${category.strCategoryDescription}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
