import 'dart:ui';

import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/presentation/controllers/loja/loja_list_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LojaListPage extends StatefulWidget {
  const LojaListPage({super.key});

  @override
  State<LojaListPage> createState() => _LojaListPageState();
}

class _LojaListPageState extends State<LojaListPage> {
  @override
  LojaListCtrl controller = LojaListCtrl();
  
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
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 1),
                              children: _buildListItens(categorias),
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
  List<Widget> _buildListItens (List<Loja>lojas){
    List<Widget> itens =[];

    for (Loja l in lojas) {
      itens.add(Card(
        child: ListTile(
          title: Text(l.nome),
          leading: Icon(Icons.pets),
          onTap: () {},
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