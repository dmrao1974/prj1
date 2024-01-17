import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => MyApp(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: const Text('Bhilai Steel Plant'),
      ),

      body: Center(
          child: ElevatedButton(
            // Within the `FirstScreen` widget
            onPressed: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Department Locations'),
          ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  List<String> titles = [
    "जे.एल.एन.हॉस्पिटल",
    "Plate Mill",
    "Blast Furnace-8",
    "Power Plant-II",
    "RMP-2",
    "OHP-B",
    "Talpuri-B",
    "CO CCD",
    "SP-3",
    "RMP-3",
    "SMS-3",
    "T&D Org (Work Stn)",
    "T&D Org (BF Stn)",
    "Bars & Rod Mill",
    "Merchant Mill"
  ];

  final List<String> _urlsToLaunch = [
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/21.1883401,81.3154209/@21.1866707,81.3236103,2463m/data=!3m1!1e3!4m9!4m8!1m5!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!1m0!3e0?entry=ttu",

    "https://www.google.com/maps/dir/59WP%2B468+MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/21.1799192,81.3797025/1.+Plate+Mill:+Main+Entrance,+59GH%2BJCW,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/@21.1859701,81.3706185,3333m/data=!3m2!1e3!4b1!4m20!4m19!1m10!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!3m4!1m2!1d81.3844137!2d21.1931224!3s0x3a2923082a9f0589:0x3d0acb181fa1f8c5!1m0!1m5!1m1!1s0x3a2923cc3c5d90a7:0x4b12fd4d33e334a7!2m2!1d81.3785873!2d21.176624!3e0?entry=ttu",

    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/Blast+Furnace+No.+8,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/@21.1937939,81.3873948,18z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!1m5!1m1!1s0x3a2923a5ceab0d87:0x2e89b3590c831a5f!2m2!1d81.3904523!2d21.1932985!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/NSPCL+POWER+PLANT-2,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/@21.1844776,81.3730568,14.5z/data=!4m19!4m18!1m10!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!3m4!1m2!1d81.3802991!2d21.188895!3s0x3a29230b7cb94893:0xd0ba5cdada30e7df!1m5!1m1!1s0x3a29236a009bf8c9:0x8f35250ebc411f2e!2m2!1d81.3936992!2d21.1785832!3e0?entry=ttu",
    "https://www.google.com/maps/dir/Ispat+Bhawan+Rd,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/Hudco,+Bhilai,+Chhattisgarh+490009/@21.1925755,81.3107786,13z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x3a292307f3e9b80f:0x8cee90535223ec38!2m2!1d81.3843018!2d21.196703!1m5!1m1!1s0x3a293cee3d93bf67:0x5bab0ad38eef343c!2m2!1d81.3074866!2d21.1879575!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/OHP-B+Control+Room+(Dispatcher),+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/@21.1810686,81.4025464,14.25z/data=!4m19!4m18!1m10!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!3m4!1m2!1d81.3951439!2d21.1932937!3s0x3a2923a53124ea0f:0x69d093c33962989a!1m5!1m1!1s0x3a2923fff1aa984f:0x9f7536dc8a6933f8!2m2!1d81.4018623!2d21.1753903!3e0?entry=ttu",
    "https://www.google.com/maps/dir/Ispat+Bhawan+Rd,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/Talpuri+Twincity+bhilai,+Talpuri+Twincity+Intnl+Clny+(CGHB),+Bhilai,+Chhattisgarh+490006/@21.1744878,81.3326693,15z/data=!4m14!4m13!1m5!1m1!1s0x3a292307f3e9b80f:0x8cee90535223ec38!2m2!1d81.3843018!2d21.196703!1m5!1m1!1s0x3a293cbe3aeb44cf:0xbe2189dcbd687479!2m2!1d81.3182182!2d21.1707691!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/Canteen,+CO+%26+CCD,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/@21.1825932,81.3771097,14.75z/data=!4m14!4m13!1m5!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!1m5!1m1!1s0x3a29239f696f1555:0xe20f6767d7a04744!2m2!1d81.3879501!2d21.1829727!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/SINTER+PLANT-3,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/@21.1744736,81.3788378,14z/data=!4m19!4m18!1m10!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!3m4!1m2!1d81.3731188!2d21.1761202!3s0x3a292371e3b1c477:0x269f8dd567f0df44!1m5!1m1!1s0x3a29234f7ded0637:0x2c6b7b5e978cc7dd!2m2!1d81.3895816!2d21.1779762!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/RMP-3,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/@21.1841836,81.3889104,14.5z/data=!4m19!4m18!1m10!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!3m4!1m2!1d81.3790444!2d21.1806694!3s0x3a2923738080613b:0xa58696481bc23212!1m5!1m1!1s0x3a2923b8ba4aba33:0x7930eb020415e9db!2m2!1d81.4049599!2d21.1915046!3e0?entry=ttu",
    "https://www.google.com/maps/dir/MMP+Hospital,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh/SMS3+Welfare+Building,BSP,+59WR%2BFJ3,+Bhilai+Steel+Plant,+Bhilai,+Chhattisgarh+490021/@21.1941834,81.3852076,16.75z/data=!4m14!4m13!1m5!1m1!1s0x3a29231687614247:0xf7eff41b77eb631f!2m2!1d81.3855742!2d21.1952768!1m5!1m1!1s0x3a2923ef2d3efcef:0x45e0a1d3e7e65d88!2m2!1d81.3915399!2d21.1961625!3e0?entry=ttu",
    "",
    "",
    "",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Bhilai Steel Plant"),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: () {
                    _launchUrl(index);
                  },
                  title: Text(
                    titles[index],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  _launchUrl(index) async {
    if (await canLaunch(_urlsToLaunch[index])) {
      await launch(_urlsToLaunch[index]);
    } else {
      throw "Could not open $_urlsToLaunch";
    }
  }
}

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           // Within the SecondScreen widget
//           onPressed: () {
//             // Navigate back to the first screen by popping the current route
//             // off the stack.
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }