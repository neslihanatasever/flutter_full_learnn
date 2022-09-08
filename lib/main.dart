import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn.dart';
import '101/container_sized_box_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}
