import 'package:flutter/material.dart';
import 'package:local_notification_example/local_notification_sevice.dart';
import 'package:local_notification_example/notification_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    LocalNotificationService.localNotificationService.init(navigatorKey);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const NotificationScreen(),
      navigatorKey: navigatorKey,
    );
  }
}
