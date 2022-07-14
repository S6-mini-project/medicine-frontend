import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:medpharma_app/widgets/orderScreen.dart';

class NotificationService extends ChangeNotifier {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
      
  // //initilize
  // gotoOrders()  async{
  //        Navigator.push(context,
  //             MaterialPageRoute(builder: (context) =>OrderScreen())); //todo
  // }
  Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("ic_launcher");

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
    // onSelectNotification: gotoOrders(),
    );
  }

  //Instant Notifications
  Future instantNofitication(String med_name) async {
    var android = AndroidNotificationDetails("id", "channel",
        color: Color.fromARGB(255, 34, 71, 255),
        priority: Priority.high,
        importance: Importance.high);

    var ios = IOSNotificationDetails();

    var platform = new NotificationDetails(android: android, iOS: ios);

    await _flutterLocalNotificationsPlugin.show(
        0,
        "User your "+med_name+" has reached minimum stock!",
        "Tap to  order now!",
        platform,
        payload: "Welcome to demo app");
  }

  //Stylish Notification
  // Future stylishNotification() async {
  //   var android = AndroidNotificationDetails("id", "channel",
  //       color: Color.fromARGB(255, 34, 34, 255),
  //       enableLights: true,
  //       enableVibration: true,
  //       largeIcon: DrawableResourceAndroidBitmap("ic_launcher"),
  //       styleInformation: MediaStyleInformation(
  //           htmlFormatContent: true, htmlFormatTitle: true));

  //   var platform = new NotificationDetails(android: android);

  //   await _flutterLocalNotificationsPlugin.show(
  //       0, "User your Paracetamol quantity is becoming low please order now!", "Tap to  order now!", platform);
  // }

  //Cancel notification

  Future cancelNotification() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
