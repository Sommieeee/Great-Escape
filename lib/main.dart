import 'package:flutter/material.dart';
import 'package:great_escape/ui/account.dart';
import 'package:great_escape/ui/activities.dart';
import 'package:great_escape/ui/add-activity.dart';
import 'package:great_escape/ui/add-event.dart';
import 'package:great_escape/ui/add-medication.dart';
import 'package:great_escape/ui/add-remainder.dart';
import 'package:great_escape/ui/clock-in.dart';
import 'package:great_escape/ui/clock-out.dart';
import 'package:great_escape/ui/connect.dart';
import 'package:great_escape/ui/connecting.dart';
import 'package:great_escape/ui/event-created.dart';
import 'package:great_escape/ui/medications.dart';
import 'package:great_escape/ui/menu.dart';
import 'package:great_escape/ui/password.dart';
import 'package:great_escape/ui/set-remainder.dart';
import 'package:great_escape/ui/validation.dart';
import 'package:great_escape/ui/view-events.dart';
import 'package:great_escape/ui/home.dart';
import 'package:great_escape/ui/index.dart';
import 'package:great_escape/ui/login.dart';
import 'package:great_escape/ui/notifications.dart';
import 'package:great_escape/ui/otp.dart';
import 'package:great_escape/ui/profile.dart';
import 'package:great_escape/ui/schedule-event.dart';
import 'package:great_escape/ui/sign-up.dart';
import 'package:great_escape/ui/slider-screen.dart';
import 'package:great_escape/ui/splash_screen.dart';
import 'package:great_escape/ui/verified.dart';
import 'package:great_escape/ui/verify.dart';
import 'package:great_escape/ui/view-remainder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        SliderScreen.id: (context) => const SliderScreen(),
        SignUp.id: (context) => const SignUp(),
        Login.id: (context) => const Login(),
        Index.id: (context) => const Index(),
        Home.id: (context) => const Home(),
        Connect.id: (context) => const Connect(),
        Notifications.id: (context) => const Notifications(),
        Profile.id: (context) => const Profile(),
        Verify.id: (context) => const Verify(),
        Otp.id: (context) => const Otp(),
        Verified.id: (context) => const Verified(),
        ScheduleEvent.id: (context) => const ScheduleEvent(),
        AddEvent.id: (context) => const AddEvent(),
        EventCreated.id: (context) => const EventCreated(),
        ViewEvents.id: (context) => const ViewEvents(),
        ClockIn.id: (context) => const ClockIn(),
        Validation.id: (context) => const Validation(),
        ClockOut.id: (context) => const ClockOut(),
        SetRemainder.id: (context) => const SetRemainder(),
        AddRemainder.id: (context) => const AddRemainder(),
        ViewRemainder.id: (context) => const ViewRemainder(),
        Medications.id: (context) => const Medications(),
        AddMedication.id: (context) => const AddMedication(),
        Activities.id: (context) => const Activities(),
        AddActivity.id: (context) => const AddActivity(),
        Connecting.id: (context) => const Connecting(),
        Account.id: (context) => const Account(),
        Password.id: (context) => const Password(),
        Menu.id: (context) => const Menu(),
      },
    );
  }
}
