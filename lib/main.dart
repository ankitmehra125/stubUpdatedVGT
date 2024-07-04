import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/PickInterest/picInterest.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/Splashes/Splash.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step4.dart';

import 'ATTANDEE_APP/A_Screens/STUB_CONNECTS/popup_page.dart';
import 'ATTANDEE_APP/A_Screens/STUB_CONNECTS/stubConnect_landing.dart';
import 'ATTANDEE_APP/A_Screens/STUB_CONNECTS/video_selfie_page.dart';
import 'ORGANISER_APP/O_Screens/CreateEvents/CreateEventsMain.dart';
import 'ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';
import 'ORGANISER_APP/O_Screens/CreateEvents/Process/eventSuccessMessage.dart';
import 'ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'ORGANISER_APP/O_Screens/O_Messaging/message_board.dart';
import 'ORGANISER_APP/O_Screens/O_Messaging/message_page.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (context)
    {
      return const MyApp();
    },
  ));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build( BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
        title: 'Stub Guys',
        theme: ThemeData(
          useMaterial3: true,
        ),
      // home :StubConnectLanding()
      home: const Splash()
      // home: const CE_Step1(),
      //VideoSelfiePage()
      //PopUpPage()

      // home: picInterest(),
      // home: HomeFeed(),
    );
  }
}



