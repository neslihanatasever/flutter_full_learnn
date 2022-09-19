import 'package:flutter/material.dart';

class StatlessLearn extends StatelessWidget {
  final String text2 = "neslihan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(title: text2),
          const TitleTextWidget(title: "sevgi"),
          _emptyBox(),
          const TitleTextWidget(title: "kübra"),
          _emptyBox(),
          const TitleTextWidget(title: "gülsüm"),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
//Extract Method ile açtık ve bunu textlerin arasına "_emptyBox()" şeklinde konumlandırdık
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
