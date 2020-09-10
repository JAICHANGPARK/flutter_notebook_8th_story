import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'ep566_food_delivery_app/food_delivery_app.dart';

final helloWorldProvider = Provider((_) => "Hello world");

void main() {
  runApp(ProviderScope(child: SampleApp()));
}

class SampleApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final String value = useProvider(helloWorldProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(),

      ),

    );
  }
}
