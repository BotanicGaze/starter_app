import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    super.didUpdateProvider(provider, previousValue, newValue, container);
    if (kDebugMode) {
      print('👀 [${provider.name ?? provider.runtimeType}] '
          'changed from 👉 $previousValue to 👉 $newValue 👈');
    }
  }
}
