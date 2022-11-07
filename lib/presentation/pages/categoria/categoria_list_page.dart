import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/presentation/controllers/categoria/categoria_list_ctrl.dart';
import 'package:easeexpress/presentation/pages/loja/loja_list_page.dart';
import 'package:flutter/material.dart';


class CategoriaListPage extends StatefulWidget {
  const CategoriaListPage({super.key});

  @override
  State<CategoriaListPage> createState() => _CategoriaListPageState();
}

class _CategoriaListPageState extends State<CategoriaListPage> {
  CategoriaListCtrl controller = CategoriaListCtrl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'), centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: controller.search(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!.fold((failure) {
                  return const Center(child: Text('Errro....'));
                }, (categorias) {
                  return Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 7,
                              mainAxisSpacing: 5,
                              ),
                      children: _buildListItens(categorias),
                    ),
                  );
                });
              }
              return const CircularProgressIndicator();
            }))
        ],
      ),
    );
  }
  List<Widget> _buildListItens(List<Categoria>categorias){
    List<Widget> itens =[];

    for (Categoria c in categorias) {
      itens.add(Card(
        child: ListTile(
          title: Center(child: Text(c.nome)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LojaListPage(c)),);
          },
        ),
        elevation: 8,
        shadowColor: Colors.blue,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1)
        ),
      ));
    }
    return itens;
  }
}