import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          width: 300,
          height: 300,
          child: Image.asset(
            ImageItems().appleWithBook,
            fit: BoxFit.fitWidth,
          ),
        ),
        Image.network('https://media-exp1.licdn.com/dms/image/C4D0BAQFtptVoLLRbIw/company-logo_200_200/0/1519863293973?e=2147483647&v=beta&t=cMH1_f3hq5XjCUCtrzaJzz2Pl-84nG7LEUx1P21sWcA',
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/AtasayarYeniLogo.png";
  final String appleBook = "assets/png/pngegg.png";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.fitWidth);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}

//asset(...) => localden el ile eklemek
//file(...) => telefonun içinde ki bir dosyadan fotoğraf almak istersek file'ı kullanırız
//network(...) => internetten fotoğrak eklemek

//assets'lerin içinde projenin config dosyalarını, img, svg'leri tutabiliyoruz.
