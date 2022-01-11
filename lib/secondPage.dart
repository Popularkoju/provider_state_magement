import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:providerr/Provider/MyList.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListText(),
            MaterialButton(onPressed: (){
              context.read<MyList>().addFruits("papaya");
            },
              child: Text("add me"),
              color:Colors.red,),
            MaterialButton(onPressed: (){
              context.read<MyList>().removeFruits("papaya");
            },
              child: Text("remove me"),
              color:Colors.red,),
            MaterialButton(onPressed: (){
              Navigator.of(context).pop();
            },
              child: Text("Back"),
              color:Colors.blue,)
          ],

        ),
      ),
    );
  }
}
class ListText extends StatelessWidget {
  const ListText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("${context.watch<MyList>().fruits}");
  }
}

