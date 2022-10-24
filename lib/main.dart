import 'package:easeexpress/presentation/pages/categoria/categoria_list_page.dart';
import 'package:easeexpress/presentation/pages/loja/loja_details_page.dart';
import 'package:easeexpress/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    home:LojaDetailsPage(),
  ));
}