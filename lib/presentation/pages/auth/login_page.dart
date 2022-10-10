import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.shop_2,
              size: 100,
            ),
            SizedBox(
              height: 25,
            ),
            // Hello Again !
            // No lugar de "ola, novamente e bem vindo" fica a logo do projeto :)
            Text(
              'EASEEXPRESS',
              style: GoogleFonts.bebasNeue(
                fontSize: 36,
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Text(
              'Bem Vindo',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            // Email textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Senha textfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Senha',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            // Registre-se agora button
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // Não tem registro ? registre agora
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Não tem conta ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Registre-se',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Apenas explorar o APP
            Text(
              'EXPLORAR',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}