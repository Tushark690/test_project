import 'package:flutter/material.dart';
import 'package:test_project/constant/app_color.dart';
import 'package:test_project/widget/card.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final String _appTitle = "FirstScreen";
  double _height=0;
  double _width=0;


  @override
  Widget build(BuildContext context) {
    _height=MediaQuery.of(context).size.height;
    _width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(_appTitle),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title:const Text('Home'),
              onTap: (){
                Fluttertoast.showToast(msg: 'This is a toast');
              },
            ),

          ],
        ),
      ),
      body: SizedBox(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _myWidget(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
              CustomCard(),
            ],
          ),
        ),
      )
    );
  }

  Widget _myWidget(){
    return Card(
      child: Text('My text'),
    );
  }
}
