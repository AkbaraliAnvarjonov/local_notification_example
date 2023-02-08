import 'package:flutter/material.dart';
import 'package:local_notification_example/local_notification_sevice.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int currentId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showNotification(id: currentId);
              },
              child: const Text("SIMPLE Notifiction 1"),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showNotification(id: currentId);
              },
              child: const Text("SIMPLE Notifiction 2"),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .scheduleNotification(
                  id: currentId,
                  delayedTime: 3,
                );
              },
              child: const Text("SCHUADULED NOTIFICATION "),
            ),
            TextButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showPeriodically(id: currentId);
              },
              child: const Text("PERIODIC NOTIFICATION EVERY MINUT"),
            ),
            const Expanded(child: SizedBox()),
            TextButton(
                onPressed: () {
                  LocalNotificationService.localNotificationService
                      .cancelAllNotifications();
                },
                child: const Text("Cancel All Notifications")),
            TextButton(
                onPressed: () {
                  LocalNotificationService.localNotificationService
                      .cancelNotificationById(currentId);
                },
                child: const Text("Cancel Notification By id")),
          ],
        ),
      ),
    );
  }
}
