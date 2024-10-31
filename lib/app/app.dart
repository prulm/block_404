import 'package:block_404/app/providers/theme_provider.dart';
import 'package:block_404/app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Block404 extends ConsumerStatefulWidget {
  const Block404({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Block404State();
}

class _Block404State extends ConsumerState<Block404> {
  @override
  Widget build(BuildContext context) {
    final newThemeProvider = ref.watch(themeProvider);
    return MaterialApp.router(
        title: 'B-four',
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        builder: (context, child) {
          return AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: child,
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
        theme: newThemeProvider.themeData,
      );
  }
}