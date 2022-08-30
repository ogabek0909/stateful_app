import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 10;
  int y=0;
  void minus(){
    setState(() {
      count-=5;
      y+=0;
    });
  }

  void func() {
    setState(() {
      count += 5;
    });

    //print('Button pressed: $count');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text('Count:$y'),
                  TextButton(onPressed: minus, child: Text('-',style: TextStyle(fontSize: 50),)),
                  Text('Count:$count'),
                  TextButton(
                    onPressed: func,
                    child: Text('+',style: TextStyle(fontSize: 50),),
                  ),
    
                ],
              ),
          ],
        ),
        ),
      ),
    );
  }
}
