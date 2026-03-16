import 'package:demo_app/core/data/local/secure_storage/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage _secureStorage;

  SecureStorageImpl(this._secureStorage);

  @override
  Future<void> delete(String key) async {
    await _secureStorage.delete(key: key);
  }

  @override
  Future<String?> read(String key) async {
    return await _secureStorage.read(key: key);
  }

  @override
  Future<void> write(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }
}
