import 'package:easeexpress/data/repositories/servico_repository.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/presentation/controllers/servico/list_details_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class ServicoDetailsPage extends StatelessWidget {
  Servico servico;
  LojaDetailsCtrl controller = LojaDetailsCtrl();
  ServicoDetailsPage(this.servico, {super.key});

  @override
  Widget build(BuildContext context) {
    int numeroLikes = 0;

    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
                child: Image(
              image: NetworkImage(
                  servico.image),
              width: 200,
            )),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: LikeButton(
                  size: 30,
                  countPostion: CountPostion.bottom,
                  likeCount: numeroLikes,
                  likeBuilder: (isTapped) {
                    return Icon(
                      Icons.favorite,
                      color: isTapped ? Colors.redAccent: Colors.grey,
                      );
                  },
                ),
              )
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(servico.preco),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(servico.descricao),
            ),
            width: 300,
            height: 140,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.blueAccent,
                blurRadius: 4,
                offset: Offset(4, 8),
              )
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 100,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('COMPRAR')),
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
