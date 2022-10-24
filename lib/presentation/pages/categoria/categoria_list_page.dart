import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/presentation/controllers/categoria/categoria_list_ctrl.dart';
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
      appBar: AppBar(),
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
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 1),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(c.nome),
          ],
        ),
      ));
    }
    return itens;
  }
}