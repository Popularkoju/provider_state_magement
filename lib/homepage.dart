import 'package:flutter/material.dart';
import 'package:providerr/Provider/Button.dart';
import 'package:providerr/Provider/Counter.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${context.watch<Counter>().count}",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "${context.watch<MyButton>().isPressed}",
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(onPressed: (){
              context.read<MyButton>().changeColor();
            },
            child: Text("press me"),
            color:context.watch<MyButton>().isPressed?  Colors.green:Colors.red,),
            Spacer(),
            MaterialButton(onPressed: (){
              Navigator.pushNamed(context, "/second");
            },
              child: Text("Second page"),
              color:Colors.red,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<Counter>().increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




