import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            margin: ProjectMargin.cardMargin,
            color: ProjectColor.bluegrey,
            shape: StadiumBorder(),
            child: SizedBox(height: 100, width: 300, child: Center(child: Text('Neslihan'))),
          ),
          const Card(
            margin: ProjectMargin.cardMargin,
            color: Colors.white,
            shape: CircleBorder(),
            child: SizedBox(height: 100, width: 500),
          ),
          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100, width: 300),
          ),
          Card(
            color: ProjectColor.purple,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const SizedBox(height: 100, width: 300),
          ),
          _CustomCard(child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text("Neslihan")),
          ))
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class ProjectColor {
  static const purple = Colors.deepPurple;
  static const bluegrey = Colors.blueGrey;
}

//doğru card kullanım şekli
class _CustomCard extends StatelessWidget {

   _CustomCard({Key? key, required this.child}): super(key:key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}//burada sadece card bilgileri içermeli

//_CustomCard'ın başında k _(alt tire) sadece bu sayfada kullanılıcak anlamına gelmektedir.
//padding dış kısmı kısıtlar, margin ise iç kısmı kapsar.

//Borders
//3 adet shape border vardır.
//StadiumBorder() => stadyum şeklini alır
//CircleBorder() => yuvarlak olur
//RoundedReactangleBorder() => köşelerden kırmayı sağlar köşeleri sivri bir yapısı vardır.
//BorderRadius özelliğini alır => shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),


//bütün card'ların özellikleri aynı olacaksa eğer main.dart sayfasında theme içinde cardTheme özelliklerini yazabiliriz.

