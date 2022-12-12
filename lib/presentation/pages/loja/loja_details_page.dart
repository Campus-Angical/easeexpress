import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/domain/failures/failures.dart';
import 'package:easeexpress/presentation/controllers/servico/list_details_ctrl.dart';
import 'package:easeexpress/presentation/pages/servico/servico_details_page.dart';
import 'package:flutter/material.dart';

class LojaDetailsPage extends StatefulWidget {
  Categoria categoria;
  final Loja loja;
  LojaDetailsCtrl controller = LojaDetailsCtrl();
  LojaDetailsPage(this.categoria,this.loja, {super.key});

  @override
  State<LojaDetailsPage> createState() => _LojaDetailsPageState();
}

class _LojaDetailsPageState extends State<LojaDetailsPage> {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lanchonete Da Val'),
        centerTitle: true,
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        FutureBuilder(
            future: widget.controller.search(widget.categoria, widget.loja),
            builder: (((context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!.fold((failure){
                  return const Center(child: Text('Erro....'));
                }, (servicos) {
                  return Expanded(child: ListView(
                      children: _buildListItens(servicos),
                      )
                      );
              });
              }
              return const CircularProgressIndicator();
            })))
        ],
      ),
    );
  }
    List<Widget> _buildListItens (List<Servico>servicos){
      List<Widget> itens = [];

      for (Servico s in servicos) {
        itens.add(Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: Center(
              child: ListTile(
                title: Text(s.nome),
                subtitle: Text(s.descricao),
                leading: Image.network(s.image),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ServicoDetailsPage(s)),);
                },
                ),
            ),
          ),
        ));
      }
      return itens;
    }
}