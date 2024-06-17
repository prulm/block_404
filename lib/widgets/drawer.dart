import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Drawer extends ConsumerStatefulWidget {
  const Drawer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DrawerState();
}

class _DrawerState extends ConsumerState<Drawer> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}