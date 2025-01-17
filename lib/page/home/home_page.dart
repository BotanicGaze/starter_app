import 'package:flutter/material.dart';

import 'package:starter_app/global/global.dart';
import 'package:starter_app/page/home/home_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(homeProvider);
    final theme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HomePage'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => ref.read(themeProvider).toggleTheme(),
              icon: Icon(Theme.of(context).customOption.themeIcon),
              label: Text(theme.isDarkMode ? 'DarkMode' : 'LightMode'),
            ),
          ],
        ),
      ),
    );
  }
}
