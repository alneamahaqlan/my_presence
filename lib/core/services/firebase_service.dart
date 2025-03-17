// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class FirebaseService {
//   final Dio _dio;
//   final String firebaseApiUrl;
//   final String credentialsPath;

//   FirebaseService({
//     Dio? dio,
//     this.firebaseApiUrl =
//         'https://fcm.googleapis.com/v1/projects/your-project-id/messages:send',
//     this.credentialsPath = 'assets/firebase/FIREBASE_CREDENTIALS.json',
//   }) : _dio = dio ?? Dio();

//   Future<bool> sendNotification(
//       {required List<String> tokens,
//       required String title,
//       required String body,
//       Map<String, dynamic> data = const {},
//       String? image,
//       String? icon}) async {
//     final notification = {
//       'message': {
//         'data': {'payload': jsonEncode(data)},
//         'notification': {
//           'title': title,
//           'body': body,
//         },
//         'android': {
//           'priority': 'high',
//           'notification': {
//             'sound': 'default',
//             'color': '#0000FF',
//             'channel_id': 'com.shahen.challenge.shahen_challenge',
//             'notification_priority': 'PRIORITY_MAX',
//             'visibility': 'PUBLIC',
//             'light_settings': {
//               'color': {'red': 1.0, 'green': 0.0, 'blue': 0.0},
//             },
//           },
//         },
//         'webpush': {
//           'headers': {'TTL': '4500'},
//           'notification': {'title': title, 'body': body},
//         },
//         'apns': {
//           'headers': {'apns-priority': '10'},
//           'payload': {
//             'aps': {
//               'alert': {'title': title, 'body': body},
//               'sound': 'default',
//               'badge': 1,
//             },
//           },
//         },
//         'fcm_options': {'analytics_label': 'my_custom_label'},
//       },
//     };

//     if (image != null) {
//       notification['message']['notification']['image'] = image;
//     }
//     if (icon != null) {
//       notification['message']['webpush']['notification']['icon'] = icon;
//     }

//     try {
//       final accessToken = await _getAccessToken();
//       if (accessToken == null) return false;

//       for (final token in tokens) {
//         notification['message']['token'] = token;

//         final response = await _dio.post(
//           firebaseApiUrl,
//           options: Options(headers: {
//             'Authorization': 'Bearer $accessToken',
//             'Content-Type': 'application/json',
//           }),
//           data: jsonEncode(notification),
//         );

//         if (response.statusCode! < 200 || response.statusCode! >= 300) {
//           print("Firebase notification failed for token: $token");
//         }
//       }
//       return true;
//     } catch (e) {
//       print("Firebase notification error: $e");
//       return false;
//     }
//   }

//   Future<String?> _getAccessToken() async {
//     try {
//       final jwtAssertion = await _createJwtAssertion();
//       final response = await _dio.post(
//         'https://oauth2.googleapis.com/token',
//         data: {
//           'grant_type': 'urn:ietf:params:oauth:grant-type:jwt-bearer',
//           'assertion': jwtAssertion,
//         },
//       );
//       final result = response.data;
//       return result['access_token'];
//     } catch (e) {
//       print("Error fetching Firebase access token: $e");
//       return null;
//     }
//   }

//   Future<String> _createJwtAssertion() async {
//     final credentials = await _loadFirebaseCredentials();
//     if (credentials == null) {
//       throw Exception("Unable to load Firebase credentials.");
//     }

//     final header = base64Url.encode(utf8.encode(jsonEncode({'alg': 'RS256', 'typ': 'JWT'})));
//     final claimSet = base64Url.encode(utf8.encode(jsonEncode({
//       'iss': credentials['client_email'],
//       'scope': 'https://www.googleapis.com/auth/firebase.messaging',
//       'aud': 'https://oauth2.googleapis.com/token',
//       'exp': DateTime.now().millisecondsSinceEpoch ~/ 1000 + 3600,
//       'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
//     })));
//     final unsignedJwt = "$header.$claimSet";
//     final signature = await _signJwt(unsignedJwt, credentials['private_key']);

//     return "$unsignedJwt.$signature";
//   }

//   Future<String> _signJwt(String data, String privateKey) async {
//     // Implement JWT signing using RSA key pair (external package needed, e.g., `crypto` or `pointycastle`)
//     throw UnimplementedError("JWT signing with RSA needs implementation.");
//   }

//   Future<Map<String, dynamic>?> _loadFirebaseCredentials() async {
//     try {
//       final jsonString = await rootBundle.loadString(credentialsPath);
//       return jsonDecode(jsonString);
//     } catch (e) {
//       print("Error loading Firebase credentials: $e");
//       return null;
//     }
//   }
// }
