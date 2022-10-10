import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClienteFormPage extends StatefulWidget {
  const ClienteFormPage({super.key});

  @override
  State<ClienteFormPage> createState() => _ClienteFormPageState();
}

class _ClienteFormPageState extends State<ClienteFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 129, 240),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 65, 129, 240),
        title: Text('CADASTRO'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          // Campo Nome
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nome Completo',
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          // Campo E-mail
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          // Campo Celular
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Numero de Telefone',
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          SizedBox(height: 15,),
          // Endereço
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Endereço',
                filled: true,
                fillColor: Colors.blue.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),

          ElevatedButton(onPressed: () {}, child: Text('Cadastrar'),),
          ElevatedButton(onPressed: () {}, child: Text('Cancelar'),),
          
        ],
      ),
    );
  }
}