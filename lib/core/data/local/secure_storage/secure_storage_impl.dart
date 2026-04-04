import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final class SecureStorageImpl implements SecureStorage {
  const SecureStorageImpl(this._storage);
  final FlutterSecureStorage _storage;

  @override
  Future<void> delete(String key) => _storage.delete(key: key);

  @override
  Future<String?> read(String key) => _storage.read(key: key);

  @override
  Future<void> write(String key, String value) => _storage.write(key: key, value: value);
}
