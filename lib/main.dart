import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: ContohStateful(txtNya: "Hello World!"),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {

  final String text;

  Heading({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


class ContohStateful extends StatefulWidget {

  final String txtNya;

  const ContohStateful({Key key, this.txtNya}) : super(key: key);



  @override
  _ContohStatefulState createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {


  double _ukuranText = 16.0;


  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text(widget.txtNya, style: TextStyle(fontSize: _ukuranText)),
        RaisedButton(
          child: Text("Perbesar"),
          onPressed: (){

            setState(() {
              _ukuranText = 32.0;
            });


          },

        )
        
      ],

    );
  }
}

