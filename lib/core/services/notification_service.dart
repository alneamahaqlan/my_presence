import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:http/http.dart' as http;

Future<void> backgroundNotificationHandler(
  NotificationResponse response,
) async {
  // Background processing logic if needed

  if (response.payload != null) {
    log('Message data: ${response.payload}');
  }
}

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Background message processing logic

  if (message.data['payload'] != null) {
    log('Message title: ${message.notification?.title}');
    log('Message body: ${message.notification?.body}');
    log('Message data: ${message.data}');
  }
}

class NotificationService {
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;

  NotificationService(this._localNotificationsPlugin);

  Future<void> initNotificationService() async {
    await _requestPermissions();

    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      ),
    );

    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        _mapPayload(details.payload);
      },
      onDidReceiveBackgroundNotificationResponse: backgroundNotificationHandler,
    );

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((message) async {
      _handleForegroundMessage(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _mapPayload(message.data['payload']);
    });
  }

  Future<void> _requestPermissions() async {
    NotificationSettings settings = await FirebaseMessaging.instance
        .requestPermission(
          alert: true,
          badge: true,
          sound: true,
          provisional: true,
          criticalAlert: true,
          announcement: true,
          carPlay: true,
        );
    // Handle authorization status if necessary
    log('User granted permission: ${settings.authorizationStatus}');
  }

  void _mapPayload(String? payload) {
    if (payload != null) {
      // Process payload (if needed)
    }
  }

  Future<void> sendLocalNotification(RemoteMessage message) async {
    await _localNotificationsPlugin.show(
      message.hashCode,
      message.notification?.title ?? message.data['title'],
      message.notification?.body ?? message.data['body'],
      const NotificationDetails(
        android: AndroidNotificationDetails(
          "com.app.my_presence",
          "My Presence",
          channelDescription:
              'This channel is used for important notifications.',
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: DarwinNotificationDetails(),
      ),
      payload: message.data['payload'],
    );
  }

  Future<void> handleTerminatedStateNotifications() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _mapPayload(initialMessage.data['payload']);
    }
  }

  void _handleForegroundMessage(RemoteMessage message) {
    // getIt<AppAuthBloc>().state.maybeWhen(
    //     unauthenticated: () => null,
    //     authenticated: (user) {
    //     getIt<RootBloc>().add(const RootEvent.refreshRoot());

    //     },
    //     orElse: () => null);
    sendLocalNotification(message);
  }

  Future<String> getDeviceToken() async {
    return (await FirebaseMessaging.instance.getToken()) ?? '';
  }

  static Future<String> getAccessToken() async {
    final serviceAccountJson = {
      "type": "service_account",
      "project_id": "my-presence-89c4b",
      "private_key_id": "c529c15e5753c342a8bd020a95bb5ec8ef7d2496",
      "private_key":
          "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDb8PERyXT1g3ce\n25L1WCRCGPXIJTMzQNwcJamNjZmEW7ieJ2d7VVNUGhpgpD2fAhxOWB+Ymx0CTKwY\nsmEayHNpoNq4YyS2edBt+aptYsnRyn/ulPvYvbJepXBctOmlGNhmXXPUnd9eh9j9\nH+wfWwhetPod3U/LbBi8Aq6F0iDBx6LhizfiOIRpg8F4SWclGgydCOWOk1NJIULL\nB2bvW7KiYcXmDi99IX6vAuVnu95byycirQDT88CZGOXWriWUXCGDrhUxDRrIi5va\nBQ93xwYhDk2o7JMVUsi+yRIqQjgsv81TnRFH56RsR8nrKPnlXxanzeug2cMfV1Zj\nBzJA5wk/AgMBAAECggEADMRIIgRZIyqIlBnNG9ZhcxVtfZAskCmQJ/FxuEiYuYD0\nzvgHlDZS5MYHyPClA7ave5wMPXinhEDSGTQ62b9P9Q4uvqxBRHb+snDfGS62UKoE\np2MuLpnC9vvQcWPY+h8z6daRM4LJz/wVDDW5qDpJr+xTu78NyNzon0/iidxgJWSn\nJxkZn3s9lB//xQrIX5hdD0gxI9MgBanJbLXrZU7Oa6Z4xg6lml9q49P8h0gXIx6s\n0l3p4TsuvoE4+5P6NKiLcJDVyzAAX03makouZbeR3o7YxAGcPfTiV860I5tJg7+y\nIzQ8EUgJX7vr7vDQr6klYtkr9E699gKEmNBylGtvmQKBgQDyfkQWMuAHU0oIbf4W\nAosGCuqL6lDBpapw4TyXB3vJ0Sc6vW6PS/yUYxFbEMRe5srY2iIf2axfOuAk8qHC\n4QQhCqZU3FyoGNxXDwHg+fOMdBrXGE/rmwTELgkQyz8ucD8QBjL9Hlh8bge1ctGt\niXM3llZqtStjyP9V5TXG0+JfmQKBgQDoMRqZ71ofQOVxgNSGcMiyraAIPIerGfL+\nvixh11+1ghBVIV9NwTWb6l/m60mRs8E+UgyBXVrRpdNOwuWxyPktVvMRUYGsmFwl\nI/sMffw9Iq3+SR6mllMRNDSejO8n0Iri3ArwhH1biKqssyaofK7GoSMP5pNynIiR\n+4hbI2WWlwKBgFalKTzpVsUnTIewjZ5dsEEre10dD1fyEvGceWLZqLCXDDZf43ZO\nR2TZ9SSd3BywyIAtiQ3qYD3yso5hJ82TSz9nJ8Ggr3bc0zZERX6WsSBZiBGdPUlJ\nLa3PaSvYA65bKx1VqbhptGJZimWaLjOcrk+JZz1fmK5h7mJJsSpnITbZAoGBALFW\nP6DuRAC2ygbEhI0husdtAFsKD/xIV2TkznTzz6+LZPoAARAbztwER7bQYWIczizQ\n8agkKucQJbFz/YapnlZYoFDL1aSCwW3Ea0uBNZNj10vtgLFvAoaTPtURgt7/0fOu\nZ9SG/E9atDAurAnnIH2oOGU+j8Lrdws3907UXBSFAoGAPbF5j4LLnPgQIe0Z9qpv\nwedK0RwVNeTHlYYYTa+RBWoWYjLN7RmJEicOnqh3Wkdp2QuPXDoaNvUFQBsE7qpX\nfxpDzSc6oSjWTcu1/h17SrdUVKzB3n8WYK0aZiCF0zUDd4rl9ncSehA9sb0ZEXM2\nmknFu0aZnZxYr8eBShbxh9c=\n-----END PRIVATE KEY-----\n",
      "client_email": "test-350@my-presence-89c4b.iam.gserviceaccount.com",
      "client_id": "107072838023582084556",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url":
          "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url":
          "https://www.googleapis.com/robot/v1/metadata/x509/test-350%40my-presence-89c4b.iam.gserviceaccount.com",
      "universe_domain": "googleapis.com",
    };
    List<String> scopes = [
      "https://www.googleapis.com/auth/userinfo.email",
      "https://www.googleapis.com/auth/firebase.database",
      "https://www.googleapis.com/auth/firebase.messaging",
    ];
    http.Client client = await auth.clientViaServiceAccount(
      auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
      scopes,
    );
    auth.AccessCredentials credentials = await auth
        .obtainAccessCredentialsViaServiceAccount(
          auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
          scopes,
          client,
        );
    client.close();
    return credentials.accessToken.data;
  }

  Future<void> sendNotification({
    required String token,
    required String title,
    required String body,
  }) async {
    final String accessToken = await getAccessToken();
    const String endPointFCM =
        'https://fcm.googleapis.com/v1/projects/my-presence-89c4b/messages:send';

    final Map<String, dynamic> message = {
      "message": {
        "token": token,
        "notification": {"title": title, "body": body},
        "data": {"route": "serviceScreen"},
      },
    };

    final http.Response response = await http.post(
      Uri.parse(endPointFCM),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(message),
    );

    if (response.statusCode == 200) {
      print('Notification sent successfully');
    } else {
      print(response.body);
    }
  }
}
