import 'package:flutter/material.dart';
import 'package:updatte/new_trip/admin/home10.dart';
import 'package:updatte/new_trip/admin/home5.dart';
import 'package:updatte/new_trip/admin/home7.dart';
import 'package:updatte/new_trip/admin/home8.dart';
import 'package:updatte/new_trip/admin/home9.dart';
import 'package:updatte/new_trip/new_trip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home10(),
    );
  }
}
