import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'ep570_riverpod_app/riverpod_101_page.dart';

final helloWorldProvider = Provider((_) => "Hello world");

void main() {
  runApp(ProviderScope(child: SampleApp()));
}


