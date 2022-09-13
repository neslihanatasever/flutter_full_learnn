import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            //1
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.teal;
            })),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: Text('data')), //2
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)), //3
          FloatingActionButton(
            //4
            onPressed: () {
              //servise istek atma
              //sayfanın rengini düzenleme
            },
            child: const Icon(Icons.add),
          ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: Colors.yellow, padding: const EdgeInsets.all(10)),
                onPressed: () {},
                child: const SizedBox(width: 200, child: Text('data'))), //5
          // OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.abc), label: const Text('neslihan')), icon ve textin yanyana olduğu bir property
          InkWell(
            //6
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top:20, bottom:20, right: 40, left: 40),
              child: Text('Place Bid',
              style: Theme.of(context).textTheme.headline5,
          ),
            ))
        ],
      ),
    );
  }
}

// Borders:
// CircleBorder(), RoundedRectangleBorder()
