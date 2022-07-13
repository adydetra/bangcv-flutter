import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bang CV',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Home Screen')),
      body: Center(

        child: Center(
                    child: Column(children: [
                      GestureDetector(
                        child: Image.asset(
                          'assets/img/logo.png',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          _navigateToNextScreen(context);
                        },
                      ),
                      InkWell(
                        child: Image.network(
                          'https://bangcv.netlify.app/img/cv/CV1.jpg',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          _navigateToNextScreen(context);
                        },
                      )
                    ])),

        // child: RaisedButton(
        //   child: Text(
        //     'Lihat CV',
        //     style: TextStyle(fontSize: 24.0),
        //   ),
        //   onPressed: () {
        //     _navigateToNextScreen(context);
        //   },
        // ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CV1')),
      body: Center(
        child: Text(
          'Detail CV Disini',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}