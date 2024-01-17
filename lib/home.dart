import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Home extends StatelessWidget {
  const Home({super.key});


  launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Plant Locations',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
            child: const Text('Open Website'),
            onPressed: (){
              const url = 'https://yutube.com/';
              launchUrl(url as Uri);
            },
          )),
    );
  }
}

// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('UrlLauchner'),
//         ),
//         body: Center(
//           child: RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: 'This is no Link, ',
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 TextSpan(
//                   text: 'but this is',
//                   style: TextStyle(color: Colors.blue),
//                   recognizer: TapGestureRecognizer()
//                     ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
//                     },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }