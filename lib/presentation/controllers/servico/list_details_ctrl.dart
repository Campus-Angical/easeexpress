import 'package:dartz/dartz.dart';
import 'package:easeexpress/data/repositories/servico_repository.dart';
import 'package:easeexpress/domain/entities/categoria.dart';
import 'package:easeexpress/domain/entities/loja.dart';
import 'package:easeexpress/domain/entities/servico.dart';
import 'package:easeexpress/domain/failures/failures.dart';

class LojaDetailsCtrl {

  ServicoRepository repository = ServicoRepository();

  Future<Either<Failure, List<Servico>>> search(Categoria categoria, Loja loja) {
    return repository.buscaPorServico(categoria , loja);
  }

}