import 'package:encrypt/encrypt.dart' as encrypt;

class MyEncryptionDecryption {
  //For AES Encryption/Decryption
  static final key = encrypt.Key.fromLength(32);
  static final iv = encrypt.IV.fromLength(16);
  static final encrypter = encrypt.Encrypter(encrypt.AES(key));

  static encryptAES(messages) {
    final encrypted = encrypter.encrypt(messages, iv: iv);
    return encrypted;
  }

  static decryptAES(messages) {
    final decrypted = encrypter.decrypt(messages, iv: iv);
    return decrypted;
  }
  static final keyFernet =
      encrypt.Key.fromUtf8('by#vismay&dadhichee^%*');
  static final fernet = encrypt.Fernet(keyFernet);
  static final encrypterFernet = encrypt.Encrypter(fernet);

  static encryptFernet(messages) {
    final encrypted = encrypterFernet.encrypt(messages);
    return encrypted;
  }

  static decryptFernet(messages) {
    return encrypterFernet.decrypt(messages);
  }
  static final keySalsa20 = encrypt.Key.fromLength(32);
  static final ivSalsa20 = encrypt.IV.fromLength(8);
  static final encrypteSalsa20 = encrypt.Encrypter(encrypt.Salsa20(keySalsa20));

  static encryptSalsa20(messages) {
    final encrypted = encrypteSalsa20.encrypt(messages, iv: ivSalsa20);
    return encrypted;
  }

  static decryptSalsa20(messages) {
    return encrypteSalsa20.decrypt(messages, iv: ivSalsa20);
  }
}