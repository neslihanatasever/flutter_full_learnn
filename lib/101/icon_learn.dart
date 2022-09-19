import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final  IconSizes iconSize =  IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hoşgeldiniz')),
      body: Column(
        children:[
          IconButton( //bu şekilde kod yazmak hatalıdır.
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.pink,
                size: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.adb,
                color: Theme.of(context).colorScheme.error, //theme kullanarak color verirsem farklı arkaplan dark/light olduğunda
                //renkte değişiklik gösterir. Ama flory verirsem her yerde flory olarak kalır.
                size: 40,
              )),
          IconButton( //class oluşturup bu kullanımı uygulamak 101 seviyesi için çok uygundur.
              onPressed: () {},
              icon: Icon(
                Icons.account_box_sharp,
                color: iconColors.flory,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box,
                color: iconColors.indianRed,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.access_alarms,
                color: iconColors.brown,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                color: iconColors.silver,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_tree_outlined,
                color: iconColors.cloverGreen,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors { //doğru kullanım
  final Color flory = const Color(0xffED617A);
  final Color indianRed = const Color(0xffCD5C5C);
  final Color brown = const Color(0xffA52A2A);
  final Color silver = const Color(0xffC0C0C0);
  final Color cloverGreen = const Color(0xff3EA055);
}