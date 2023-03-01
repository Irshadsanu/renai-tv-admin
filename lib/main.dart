import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'SplashScreen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const SplashScreen());
}
