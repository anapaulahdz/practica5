import 'package:flutter/material.dart';
import 'package:practica5/routes/routes.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home').whenComplete(() {
                setState(() {});
              });
            },
            icon: Icon(Icons.arrow_left, color: Colors.white)),
        title: Text('Person Details'),
      ),
    );
  }
}
