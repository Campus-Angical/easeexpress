import 'package:flutter/material.dart';

class PerfilUsuarioPage extends StatefulWidget {
  const PerfilUsuarioPage({super.key});

  @override
  State<PerfilUsuarioPage> createState() => _PerfilUsuarioPageState();
}

class _PerfilUsuarioPageState extends State<PerfilUsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Conta'),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ClipOval(
                    child: Container(
                        color: Colors.amber,
                        child: Icon(
                          Icons.person,
                          size: 90,
                        ))),
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nome'),
                    // O validador recebe o texto digitado
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o valor';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Senha'), 
                    // O validador recebe o texto digitado
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o valor';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    // O validador recebe o texto digitado
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o valor';
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Numero celular'),
                    // O validador recebe o texto digitado
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o valor';
                      }
                    },
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: Text('Editar') ,
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
