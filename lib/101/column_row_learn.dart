import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(flex: 4, child: Row(
              children: [Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.pink)),
                Expanded(child: Container(color: Colors.grey)),
                Expanded(child: Container(color: Colors.white)),
              ],
            ),
          ),
          const Spacer(),
          Expanded(flex: 2, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('a'),
                Text('a2'),
                Text('a3'),
              ],
            ),
          ),

          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
//space() boşluk verir.
//Expanded sadece row ve columnlarda kullanılabilir.
//Expanded %25 oranı ile ekranı responsive yapar.
//mainAxisAlignment: MainAxisAlignment.spaceEvenly => yatayda oranlama yapıyor
//mainAxisSize: MainAxisSize.max =>defaul değeri max'tır.
//crossAxisAlignment: CrossAxisAlignment.center => dikeyde oranlama yapar
