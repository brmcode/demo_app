import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@Riverpod(keepAlive: true)
FlutterSecureStorage flutterSecureStorage(Ref ref) {
  const androidOptions = AndroidOptions();
  const iosOptions = IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  return const FlutterSecureStorage(aOptions: androidOptions, iOptions: iosOptions);
}

@Riverpod(keepAlive: true)
SecureStorage secureStorage(Ref ref) {
  final flutterSecureStorage = ref.watch(flutterSecureStorageProvider);
  return SecureStorageImpl(flutterSecureStorage);
}
