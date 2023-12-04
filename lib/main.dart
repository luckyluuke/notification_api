import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_api/NotificationApi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification API',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InkWell(
        onTap: (){
          NotificationApi.createNormalNotificationScheduledChannelBasic(0, "New message received", "You can now trigger a notification.");
        },
        child: Text(
            "Trigger and show a notification",
            style: GoogleFonts.inter(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
            textAlign:TextAlign.center
        ),
      ),
    );
  }
}

