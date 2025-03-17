import 'dart:convert';

import 'package:basic_utils/basic_utils.dart'; // Add this import for RSAKeyParser
import 'package:pointycastle/export.dart';

class JwtGenerator {
  final String privateKey;
  final String clientEmail;

  JwtGenerator({required this.privateKey, required this.clientEmail});

  String generateJwt() {
    final header = {'alg': 'RS256', 'typ': 'JWT'};

    final now = DateTime.now().toUtc();
    final expiry = now.add(Duration(minutes: 60));

    final payload = {
      'iss': clientEmail,
      'scope': 'https://www.googleapis.com/auth/firebase.messaging',
      'aud': 'https://fcm.googleapis.com/', // Updated to match FCM endpoint
      'exp': expiry.millisecondsSinceEpoch ~/ 1000,
      'iat': now.millisecondsSinceEpoch ~/ 1000,
    };

    final encodedHeader = base64Url.encode(utf8.encode(json.encode(header)));
    final encodedPayload = base64Url.encode(utf8.encode(json.encode(payload)));

    final signatureInput = '$encodedHeader.$encodedPayload';
    final signature = _generateRsaSignature(signatureInput, privateKey);

    return '$signatureInput.$signature';
  }

  String _generateRsaSignature(String input, String privateKey) {
    // Parse the private key
    final key = CryptoUtils.rsaPrivateKeyFromPem(privateKey);

    // Create a signer
    final signer = RSASigner(SHA256Digest(), '0609608648016503040201');

    // Initialize the signer with the private key
    signer.init(true, PrivateKeyParameter<RSAPrivateKey>(key));

    // Sign the input
    final signature = signer.generateSignature(utf8.encode(input));

    // Encode the signature in base64Url format
    return base64Url.encode(signature.bytes);
  }
}
