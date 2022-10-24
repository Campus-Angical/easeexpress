import 'package:dartz/dartz.dart';
import 'package:easeexpress/data/repositories/servico_repository.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class HomeCtrl {

  ServicoRepository repository = ServicoRepository();

  Future<Either<Failure, List<Servico>>> search() {
    return repository.all();
  }

}