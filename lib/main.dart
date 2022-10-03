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
        title: Text('HOME'),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                      labelText: "Busca",
                      hintText: "Buscar Serviço",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
          ),
        ),
       ElevatedButton.icon(
                    onPressed: () {},
                    label: Text('Categorias'),
                    icon: Icon(Icons.apps), 
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      primary: Color.fromRGBO(0, 226, 187, 8),
                      shape: StadiumBorder(),
                    ),
                    
                  ),
        Text('Pedidos com boas avaliações'),
        Expanded(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1),
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://www.pocosja.com.br/divirta-se/wp-content/uploads/2017/09/DSC0415.jpg'),
                    Text('Comida Mineira'),
                    Text('120.00'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://saude.abril.com.br/wp-content/uploads/2016/11/cachorro-molhado.jpg'),
                    Text('Banho De Tosa'),
                    Text('110.00'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://uploads.metropoles.com/wp-content/uploads/2021/11/12165909/Perfumaria_O_Boticario.jpg'),
                    Text('Lily'),
                    Text('240.00'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                        'https://listenx.com.br/blog/wp-content/uploads/2022/02/textos-comerciais-para-lojas-de-roupas.png'),
                    Text('Blazer'),
                    Text('480.00'),
                  ],
                ),
              )
            ],
          ),
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
