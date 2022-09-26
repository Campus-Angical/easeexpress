import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'), centerTitle: true,
      actions: [Icon(Icons.shopping_cart)],),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
    ),
            hintText: 'Procurar',
            hintStyle: TextStyle(
              color: Colors.teal.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.teal.withOpacity(0.7),
              size: 34,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
        SizedBox(
          height: 100,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 4),
            children: [
              Card(
                color: Colors.amber,
                child: Text('Algo'),
              ),
              Card(
                color: Colors.red,
                child: Text('Algo'),
              ),
              Card(
                color: Colors.amberAccent,
                child: Text('Algo'),
              ),
              Card(
                color: Color.fromARGB(255, 243, 74, 74),
                child: Text('Algo'),
              ),
            ],
          ),
        ),
        TextButton(onPressed: (() {}), child: Text('Mais')),

        Expanded(
          child: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1),children: [
                    Card(child: Column(children: [
                      Image.network('https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?w=1200'),
                      Text('data'),
                      Text('data'),
                    ],),),
                    Card(child: Column(children: [
                      Image.network('https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?w=1200'),
                      Text('data'),
                      Text('data'),
                    ],),),
                    Card(child: Column(children: [
                      Image.network('https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?w=1200'),
                      Text('data'),
                      Text('data'),
                    ],),),
                    Card(child: Column(children: [
                      Image.network('https://img.itdg.com.br/tdg/images/recipes/000/003/468/359047/359047_original.jpg?w=1200'),
                      Text('data'),
                      Text('data'),
                    ],),)
                  ],),
        )
      ]),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 50),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Buscar'),
            ),
            ListTile(
              title: Text('Favoritos'),
            ),
            ListTile(
              title: Text('Minha Conta'),
            ),
          ],
        ),
      ),

    );
  }
}
