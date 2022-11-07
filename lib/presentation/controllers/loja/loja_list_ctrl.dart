import 'package:dartz/dartz.dart';
import 'package:easeexpress/data/repositories/loja_repository.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class LojaListCtrl {
  LojaRepository repository = LojaRepository();

  Future<Either<Failure, List<Loja>>> search(Categoria categoria){
    return repository.buscaPorCategoria(categoria);
  }
  }