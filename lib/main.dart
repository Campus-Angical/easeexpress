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
            hintText: 'Categoria',
            hintStyle: TextStyle(
              color: Colors.teal.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: 20, ),
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
          child: 
           GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 4), 
            children: [
              
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
                    Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Image.network('https://www.pocosja.com.br/divirta-se/wp-content/uploads/2017/09/DSC0415.jpg'),
                      Text('Comida Mineira'),
                      Text('120.00'),
                    ],),),
                    Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Image.network('https://saude.abril.com.br/wp-content/uploads/2016/11/cachorro-molhado.jpg'),
                      Text('Banho De Tosa'),
                      Text('110.00'),
                    ],),),
                    Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Image.network('https://uploads.metropoles.com/wp-content/uploads/2021/11/12165909/Perfumaria_O_Boticario.jpg'),
                      Text('Lily'),
                      Text('240.00'),
                    ],),),
                    Card(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Image.network('https://listenx.com.br/blog/wp-content/uploads/2022/02/textos-comerciais-para-lojas-de-roupas.png'),
                      Text('Blazer'),
                      Text('480.00'),
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
