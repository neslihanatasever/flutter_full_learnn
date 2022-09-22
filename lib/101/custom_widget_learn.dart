import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(width: MediaQuery.of(context).size.width, child: CustomFoodButton(title: title, onPressed: () {},)),
              )),
          const SizedBox(height: 50),
           CustomFoodButton(title: title, onPressed: (){}),
        ],
      ),
    );
  }
}

//
class CustomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: _ColorsUtility.dullPurple, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(title,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: _ColorsUtility.pinkDaisy, fontWeight: FontWeight.bold),
            ),
        ),
        );
  }
}
//
class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}
//
class _ColorsUtility {
  final Color whiteSeven = Colors.white70;
  static const Color valentineRed = Color(0xffE55451);
  static const Color dullPurple = Color(0xff7F525D);
  static const Color pinkDaisy = Color(0xffE799A3);
  static const Color pinkViolet = Color(0xffCA226B);

}
//