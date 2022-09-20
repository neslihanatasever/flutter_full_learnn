import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(color: Colors.teal, height: 100)),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(padding: EdgeInsets.zero, color: Colors.brown, height: 100)),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Container(padding: EdgeInsets.zero, color: Colors.deepPurple, height: 100,)),
              Padding(
                padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
                child: const Text('Neslihan')), //olması gereken kullanımlar
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}


//ana widget'ı padding ile sarmalamak en doğru yöntemdir
// + ile iki padding kullanımını birleştirip kullanabiliriz
//doğru olan kullanım class oluşturup classları kullanmaktır
//container'ın kendi paddingleri de bulunur ve aynı şekilde çalışır
//Sayfa yapısının bütünlüğü ve görünürlülüğü açısından paddingler cok önemlidir
//Yukarıdan padding vermek isterseniz EdgeInsets.symmetric(vertical:10) yanlardan vermek için (horizontal: 10)
