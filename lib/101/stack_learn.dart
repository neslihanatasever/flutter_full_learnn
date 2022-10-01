import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.pinkAccent[100],
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Container(color: Colors.pink[900],
              height: 100,
            ),
          ),
          Positioned(
            right: 0,
              left: 0,
              top: 100,
              height: 100,
              child: Container(
                  color: Colors.grey
              )),
          Positioned.fill(
            top: 100,
              child: Container(
                  color: Colors.orange[300]
              )),
        ],
      ),
    );
  }
}
//Stack'in bize vermiş olduğu 2 önemli component var.
//Positioned() => 100'lük bir container veriyor.
//Bu container'ı olduğu alan içerisinde sıkıştırarak ekranda bize veriyor.
//Positioned.fill()  => height gibi propertileri yoktur.