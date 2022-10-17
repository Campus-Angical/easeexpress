import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/presentation/controllers/home_ctrl.dart';
import 'package:easeexpress/presentation/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeCtrl controller = HomeCtrl();
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
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text('Categorias'),
          icon: Icon(Icons.apps),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            primary: Color.fromRGBO(0, 226, 187, 8),
            shape: StadiumBorder(),
          ),
        ),
        const Text('Pedidos com boas avaliações'),
        FutureBuilder(
            future: controller.search(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!.fold((failure) {
                  return const Center(child: Text('Errro....'));
                }, (servicos) {
                  return Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 1),
                      children: _buildListItens(servicos),
                    ),
                  );
                });
              }

              return const CircularProgressIndicator();
            }))
      ]),
      drawer: const MyDrawer(),
    );
  }

  List<Widget> _buildListItens(List<Servico> servicos) {
    List<Widget> itens = [];

    for (Servico s in servicos) {
      itens.add(Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(s.image),
            Text(s.nome),
            Text('${s.preco}'),
          ],
        ),
      ));
    }

    return itens;
  }
}
