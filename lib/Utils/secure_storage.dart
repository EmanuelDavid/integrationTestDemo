import 'dart:core';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Keychain is used for iOS,
/// AES encryption is used for Android.
/// AES secret key is encrypted with RSA and RSA key is stored in KeyStore

class SecureStorage {
  static var _secureStorage = new FlutterSecureStorage();

  static Future<void> save(SecureStorageItem key, String value) async {
    if (value == null && value.isEmpty) {
      return;
    }

    return await _secureStorage.write(key: key.name, value: value);
  }

  static Future<String> get(SecureStorageItem key) async {
    return await _secureStorage.read(key: key.name);
  }

  static Future<void> delete(SecureStorageItem key) async {
    return await _secureStorage.delete(key: key.name);
  }

  static Future<void> clearAll(SecureStorageItem key) async {
    return await _secureStorage.deleteAll();
  }
}

enum SecureStorageItem {
  accessToken,
  refreshToken,
  email,
  password,
  expiryDate,
}

extension SecureStorageItemName on SecureStorageItem {
  String get name {
    switch (this) {
      case SecureStorageItem.accessToken:
        return 'accessToken';
      case SecureStorageItem.refreshToken:
        return 'refreshToken';
      case SecureStorageItem.email:
        return 'email';
      case SecureStorageItem.password:
        return 'password';
      case SecureStorageItem.expiryDate:
        return 'expiryDate';
      default:
        return null;
    }
  }
}
