import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Filter Chip Rekomendasi',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _filterCategories = ['Film', 'Musik', 'Buku'];
  String _selectedCategory = 'Film';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Filter Rekomendasi'),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: _filterCategories
              .map((category) => FilterChip(
                    label: Text(category),
                    selected: category == _selectedCategory,
                    onSelected: (value) {
                      setState(() {
                        _selectedCategory = category;
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
