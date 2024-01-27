import 'package:flutter_riverpod/flutter_riverpod.dart';

// A provider that exposes a read-only value.
// Providers are the most important components of Riverpod.
// In short, you can think of providers as an access point to a shared state.

// Here you can make as much provider's as needed .

// if your value is read only then use the simple provider .

final nameProvider = Provider<String>((ref) {
  return "Abubakar";
});

final cnicNumberProvider = Provider<String>((ref) {
  return "312XXXXXXX715";
});
