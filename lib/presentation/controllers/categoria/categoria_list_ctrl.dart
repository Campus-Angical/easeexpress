import 'package:dartz/dartz.dart';
import 'package:easeexpress/data/repositories/categoria_repository.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class CategoriaListCtrl {
  CategoriaRepository repository = CategoriaRepository();

  Future<Either<Failure, List<Categoria>>> search(){
    return repository.all();
  }
  }
