import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: ColorsItems.porchase,
            child: Text(
              'Örnekleme',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xff7F5217);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
