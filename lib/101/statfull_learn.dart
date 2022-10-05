import 'package:flutter/material.dart';

import '../product/counter_hello_button.dart';

//dışardan data alır
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

//statleri tutan bir class
//değişikler burada yapılır
class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  int _counterCustom = 0;

  void _updateCounter( bool isIncrement) {
    if(isIncrement){
      _countValue = _countValue + 1;
    }else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

//setState()'in içine kod yazdığımız da build metotu tekrar tetiklenir. Ve value son halini alır
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('merhaba')),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline4)),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('object');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
