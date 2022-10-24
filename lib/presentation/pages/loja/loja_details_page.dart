import 'package:flutter/material.dart';

class LojaDetailsPage extends StatefulWidget {
  const LojaDetailsPage({super.key});

  @override
  State<LojaDetailsPage> createState() => _LojaDetailsPageState();
}

class _LojaDetailsPageState extends State<LojaDetailsPage> {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil Loja'),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.9),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Pesquisar",
                  hintText: "Buscar Serviço",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)))),
            ),
          ),
          Card(
            elevation: 200,
            shape: const CircleBorder(),
            color: Colors.blue[100],
            child: Container(
              width: 200,
              height: 100,
              child: Column(children: <Widget>[]),
            ),
          ),
          Text(
            'Meu atelie!',
            style: TextStyle(fontSize: 25),
          ),
          Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 1),
                   children: [
                    ListTile(
                      
                    )
                   ],   
                    ),
                  )
        ],
      ),
    );
  }
  
}