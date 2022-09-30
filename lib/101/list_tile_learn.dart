import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children:  [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(), 
                onTap: () {},
                subtitle: const Text('How do you use you card'),
                minVerticalPadding: 0,
                leading: Container(
                    height: 100,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    child: const Icon(Icons.money)
                ),
                trailing: const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

//dense: true => componenti olabildiğince sıkıştırmamızı sağlar. Kendi paddinglerini sildirir.