import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Punya Aufa"),
        ),
        body: Container(
          color: Colors.red,
          child: MaterialButton(
            child: Text("Alert Dialog"),
            textColor: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(
                    'Men Wearing Jackets',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/img/google-jacket.gif'),
                      Text(
                        'This is a men wearing jackets',
                        textAlign: TextAlign.center,
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
