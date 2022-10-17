import 'package:dartz/dartz.dart';
import 'package:easeexpress/data/repositories/servico/servico_repository.dart';
import 'package:easeexpress/domain/failures/failures.dart';
import 'package:easeexpress/domain/servico.dart';

class HomeCtrl {

  ServicoRepository repository = ServicoRepository();

  Future<Either<Failure, List<Servico>>> search() {
    return repository.all();
  }

}