import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);

  final String _title = 'Welcome Learnn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0, //sayfa yapısını pürüssüzleştirdik
        systemOverlayStyle: SystemUiOverlayStyle.light, //en üstte ki iconların temasını değiştirdik
        actionsIconTheme: const IconThemeData(color: Colors.red, size: 24), //action içinde kullandığımız iconu özelleştirdik
        automaticallyImplyLeading: false, //flutter back butonunu otomatik verir. bu özellik ile butonu yok edebiliriz.
        // toolbarTextStyle: const TextStyle(color: Colors.pink),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          // const Center(child: CircularProgressIndicator()), //sağ üst köşede loading
        ],
      ),
      body: Column(children: const []),
    );
  }
}
