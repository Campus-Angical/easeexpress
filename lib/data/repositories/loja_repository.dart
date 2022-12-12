import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class LojaRepository {
  Future<Either<Failure, List<Loja>>> all() async {
    return FirebaseFirestore.instance.collection('lojas').get().then((snapshot) {
      List<Loja> lojas = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Loja loja = Loja(
            json['id'],json['nome']);
        lojas.add(loja);
      }
      
      return right<Failure, List<Loja>>(lojas);
    }).catchError((error) {
      return left<Failure, List<Loja>>(Failure());
    });
  }

  Future<Either<Failure, List<Loja>>> buscaPorCategoria(Categoria categoria) async {
    return FirebaseFirestore.instance.collection('categorias').doc(categoria.id).collection('lojas').get().then((snapshot) {
      List<Loja> lojas = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final json = doc.data() as Map<String, dynamic>;
        json['id'] = doc.id;
        Loja loja = Loja(
            json['id'],json['nome']);
        lojas.add(loja);
      }
      
      return right<Failure, List<Loja>>(lojas);
    }).catchError((error) {
      return left<Failure, List<Loja>>(Failure());
    });
  }

  //exclusão
Future<Either<Failure, List<Loja>>> excluirCategoria(Categoria categoria) async {
    return FirebaseFirestore.instance.collection('categorias').doc(categoria.id).collection('lojas').where('nome',isEqualTo: categoria.nome).get().then((snapshot) async {
      List<Loja> lojas = [];
      for (QueryDocumentSnapshot doc in snapshot.docs) {
        final id = doc.reference.id;
        await FirebaseFirestore.instance
      .collection('categorias').doc(categoria.id).collection('lojas').doc(id).delete();
      }
      
      return right<Failure, List<Loja>>(lojas);
    }).catchError((error) {
      return left<Failure, List<Loja>>(Failure());
    });
  }

}