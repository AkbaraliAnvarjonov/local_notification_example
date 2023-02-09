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
            ElevatedButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showNotification(id: currentId);
              },
              child: const Text("Simple"),
            ),
            ElevatedButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .scheduleNotification(
                  id: currentId,
                  delayedTime: 3,
                );
              },
              child: const Text("Scheduled"),
            ),
            ElevatedButton(
              onPressed: () {
                currentId++;
                LocalNotificationService.localNotificationService
                    .showPeriodically(id: currentId);
              },
              child: const Text("Periodic"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  LocalNotificationService.localNotificationService
                      .cancelAllNotifications();
                },
                child: const Text("Cancel All Notifications")),
            // ElevatedButton(
            //     onPressed: () {
            //       LocalNotificationService.localNotificationService
            //           .cancelNotificationById(currentId);
            //     },
            //     child: const Text("Cancel Notification By id")),
          ],
        ),
      ),
    );
  }
}
