import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class CategoriaRepository{
  Future<Either<Failure, List<Categoria>>> all() async {
    return FirebaseFirestore.instance.collection('categorias').get().then((snapshot) {
      List<Categoria> categorias = [];
      for (QueryDocumentSnapshot doc in snapshot.docs){
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Categoria categoria = Categoria(json['id'], json['nome']);
        categorias.add(categoria);
      }
      return right<Failure, List<Categoria>>(categorias);
    }).catchError((error) {
      return left<Failure, List<Categoria>>(Failure());

    });
  }
}