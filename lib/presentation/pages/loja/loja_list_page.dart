import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/presentation/controllers/loja/loja_list_ctrl.dart';
import 'package:easeexpress/presentation/pages/loja/loja_details_page.dart';
import 'package:flutter/material.dart';


class LojaListPage extends StatelessWidget {
  final Categoria categoria;
  LojaListCtrl controller = LojaListCtrl();
  LojaListPage(this.categoria, {super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lojas'), centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: controller.search(categoria),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!.fold((failure) {
                  return const Center(child: Text('Errro....'));
                }, (lojas) {
                  return Expanded(
                    child: ListView(
                              children: _buildListItens(categoria ,lojas,context),
                              )
                  );
                });
              }
              return const CircularProgressIndicator();
            }))
        ],
      ),
    );
  }
  List<Widget> _buildListItens (Categoria categoria ,List<Loja>lojas, context){
    List<Widget> itens =[];

    for (Loja l in lojas) {
      itens.add(Card(
        child: ListTile(
          title: Center(child: Text(l.nome)),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LojaDetailsPage(categoria, l)),);
          },
        ),
        elevation: 8,
        shadowColor: Colors.blue,
        margin: EdgeInsets.all(20),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1)
        ),
      ));
    }
    return itens;
  }
}