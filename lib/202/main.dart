import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/text_learn.dart';
import '../101/app_bar_learn.dart';
import '../101/button_learn.dart';
import '../101/card_learn.dart';
import '../101/color_learn.dart';
import '../101/column_row_learn.dart';
import '../101/container_sized_box_learn.dart';
import '../101/custom_widget_learn.dart';
import '../101/icon_learn.dart';
import '../101/image_learn.dart';
import '../101/indicator_learn.dart';
import '../101/list_tile_learn.dart';
import '../101/padding_learn.dart';
import '../101/scaffold_learn.dart';
import '../101/stack_learn.dart';
import '../101/statless_learn.dart';
import '../demos/note_demos_view.dart';
import '../demos/stack_demo_view.dart';

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
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white70),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        errorColor: ColorsItems.sulu,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        )),
      home:const StackDemoView(),
    );
  }
}

//eğer tüm projemde geçerli olmasını istediğim özellikler var ise buraya yazıyoruz.