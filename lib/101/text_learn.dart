import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Neslihan';
  final String? userName;

  final ProjectKeys keys= ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('Welcome $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ('Hello $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              ('Hello $name'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(userName ?? ''),
            Text(keys.welcome),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      color: Colors.green,
      fontSize: 16,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic);
}

class ProjectColors {
  static Color welcomeColor = Colors.black;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}