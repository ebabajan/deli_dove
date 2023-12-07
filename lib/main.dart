import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:deli_dove/utils/allimports/allimports.dart';
import 'package:flutter/services.dart';



void main(){
  AwesomeNotifications().initialize(
      null,
    [
      NotificationChannel(
          channelKey:  'delidove_channel',
          channelName: 'DeliDove',
          channelDescription: 'Allow the DeliDoe Notifications to show '),
    ],
    debug: true,
  );
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
