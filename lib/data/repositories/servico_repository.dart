import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class ServicoRepository {
  Future<Either<Failure, List<Servico>>> all() async {
    return FirebaseFirestore.instance.collection('servicos').get().then((snapshot) {
      List<Servico> servicos = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Servico servico = Servico(
           json['id'], json['nome'], (json['preco']), json['descricao'], json['imagem']);
        servicos.add(servico);
      }
      
      return right<Failure, List<Servico>>(servicos);
    }).catchError((error) {
      return left<Failure, List<Servico>>(Failure());
    });
  }
  Future<Either<Failure, List<Servico>>> buscaPorServico(Categoria categoria, Loja loja) async {
    return FirebaseFirestore.instance.collection('categorias').doc(categoria.id).collection('lojas').doc(loja.id).collection('servicos').get().then((snapshot) {
      List<Servico> servicos = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Servico servico = Servico(
            json['id'], json['nome'], (json['preco']), json['descricao'], json['image']);
        servicos.add(servico);
      }
      
      return right<Failure, List<Servico>>(servicos);
    }).catchError((error) {
      return left<Failure, List<Servico>>(Failure());
    });
  }
}