import 'package:flutter/material.dart';

class CommunityDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Data - Headache Data'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

        },
        label: 'Donate your data',
      ),
      floatingActionButtonLocation: FloatingActionButton.center,
    );
  }
}