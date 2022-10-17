import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
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
            json['nome'], double.parse(json['preco'].toString()), json['descricao'], json['imagem']);
        servicos.add(servico);
      }
      
      return right<Failure, List<Servico>>(servicos);
    }).catchError((error) {
      return left<Failure, List<Servico>>(Failure());
    });
  }
}