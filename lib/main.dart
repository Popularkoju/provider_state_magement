import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/Provider/Button.dart';
import 'package:providerr/Provider/Counter.dart';
import 'package:providerr/Provider/MyList.dart';
import 'package:providerr/secondPage.dart';

import 'homepage.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => MyButton()),
    ChangeNotifierProvider(create: (_) => MyList())
  ],

  child: MyApp(),) );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/second" :(context) => SecondPage()
      },
    );
  }
}


