import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
 static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
 static onTap (NotificationResponse notificationResponse) {
        
      }
 static Future init() async{
    InitializationSettings setings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/launcher_icon'),
      iOS: DarwinInitializationSettings(),
    );
      flutterLocalNotificationsPlugin.initialize(setings, onDidReceiveNotificationResponse:onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
      );
  }

  
}

