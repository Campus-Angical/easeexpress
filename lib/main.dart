import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easeexpress/firebase_options.dart';
import 'package:easeexpress/presentation/pages/categoria/categoria_list_page.dart';
import 'package:easeexpress/presentation/pages/cliente/cliente_form_page.dart';
import 'package:easeexpress/presentation/pages/home_page.dart';
import 'package:easeexpress/presentation/pages/loja/loja_list_page.dart';
import 'package:easeexpress/presentation/pages/servico/servico_details_page.dart';
import 'package:easeexpress/presentation/pages/usuario/perfil_usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MaterialApp(
    home: HomePage(),
  ));
 
}
