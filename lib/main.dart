import 'package:anurag_mechne_test/firebase_options.dart';

import 'package:anurag_mechne_test/pages/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
