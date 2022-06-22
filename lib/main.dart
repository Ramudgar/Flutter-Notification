import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:wearable/wearable/notification.dart';

void main() {
  AwesomeNotifications().initialize('resource://drawable/launcher', [
    NotificationChannel(
        channelGroupKey: "basic_channel_group",
        channelKey: "basic_channel",
        channelName: "Basic notifications",
        channelDescription: "Notification channel for basic",
        defaultColor: Colors.amber,
        importance: NotificationImportance.Max,
        ledColor: Colors.white,
        channelShowBadge: true)
  ]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // ignore: prefer_const_constructors
        '/': (context) => NotificationScreen(),
      },
    ),
  );
}
