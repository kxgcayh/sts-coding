import 'package:flutter/material.dart';
import 'package:sts_coding/data/models/capsule_model.dart';

import 'data/models/model_meme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STS Coding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Capsule Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CapsuleModel> _initCapsules = [];
  final _capsules = CapsuleModel.dummyData();
  final _listMeme = Data.dummyData();

  @override
  void initState() {
    super.initState();
    _initCapsules = CapsuleModel.dummyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Loop data menggunakan column'),
            Column(
              children: _listMeme.map((value) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(value.name),
                        Text('${value.boxCount}'),
                        Image.network(value.url),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),

            //
            //

            const Text('Loop data menggunakan column'),
            Column(
              children: _initCapsules.map((capsule) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      children: [
                        Text(capsule.capsuleSerial),
                        Text(capsule.details),
                        Text(capsule.status),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
