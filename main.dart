import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "ipic",
    home: const MyApp(),
    theme: ThemeData(primarySwatch: Colors.lightBlue),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ipic"),
        ),
        body: SizedBox(
          height: 1000,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(12),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            itemBuilder: (context, index) {
              return buildCard(index);
            },
          ),
        ));
  }

  Widget buildCard(int index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://source.unsplash.com/random/300x200',
              height: 400,
              width: 400,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text('Card $index'),
        ],
      );
}
