import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children:  [
            PngImage(name: ImageItems().appleBookWithoutPath),
            _TitleWidget(title: _title),
             Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _description *9),
            ),
            const Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                onPressed: () {}, child:  SizedBox(
              height: ButtonSpecs.buttonNormalHeight,
                child: Center(child: Text(_createNote,
                style: Theme.of(context).textTheme.headline6,
                )))),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.pinkAccent[200]),
                onPressed: () {}, child: Text(_importNote)),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

//center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title}) : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black, fontWeight: FontWeight.w300),
    );
  }
}

//Extract Method tekniği
class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.title,}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 15);
}

class ButtonSpecs {
  static const double buttonNormalHeight = 20;
  static const double botButtonHeight = 35;
  static const double sizedBoxHeight = 50;
}