import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/text_learn.dart';
import '../101/app_bar_learn.dart';
import '../101/button_learn.dart';
import '../101/card_learn.dart';
import '../101/color_learn.dart';
import '../101/container_sized_box_learn.dart';
import '../101/icon_learn.dart';
import '../101/padding_learn.dart';
import '../101/scaffold_learn.dart';
import '../101/statless_learn.dart';

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
      theme: ThemeData.dark().copyWith(
        errorColor: ColorsItems.sulu,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        )), //eğer tüm projemde geçerli olmasını istediğim özellikler var ise buraya yazabilirim.
      home: CardLearn(),
    );
  }
}
