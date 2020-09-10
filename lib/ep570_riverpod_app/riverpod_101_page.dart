import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_notebook_8th_story/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final String value = useProvider(helloWorldProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(value),
        ),

      ),

    );
  }
}