import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'ep566_food_delivery_app/food_delivery_app.dart';

final helloWorldProvider = Provider((_) => "Hello world");

void main() {
  runApp(SampleApp());
}
class SampleApp extends StatefulWidget {
  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

