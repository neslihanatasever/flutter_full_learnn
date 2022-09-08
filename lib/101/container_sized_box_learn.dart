import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 300),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, maxHeight: 100, minHeight: 10),
            child: Text('aa' * 100, maxLines: 2),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  gradient: const LinearGradient(colors: [Colors.pink, Colors.black]),
  boxShadow: const [BoxShadow(color: Colors.teal, offset: Offset(0.1, 1), blurRadius: 100)],
  border: Border.all(width: 10, color: Colors.white12));
}



class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      :super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [Colors.pink, Colors.black]),
          boxShadow: const [BoxShadow(color: Colors.teal, offset: Offset(0.1, 1), blurRadius: 100)],
          border: Border.all(width: 10, color: Colors.white12));
}
