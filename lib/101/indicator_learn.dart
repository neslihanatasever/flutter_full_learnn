import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [CenterCircularProgress()],
      ),
      body: const Center(child: LinearProgressIndicator()),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({Key? key,}) : super(key: key);
  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: CircularProgressIndicator(strokeWidth: 3, color: redColor, value: 0.8, backgroundColor: Colors.blueGrey,));
  }
}