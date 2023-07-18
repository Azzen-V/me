import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../business_logic/routing/root_router.dart';

class DefaultScreen extends ConsumerWidget {
  final Widget child;
  const DefaultScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var router = ref.watch(RootRouter.router);
    inspect(router);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: child,
    );
  }
}
