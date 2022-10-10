import 'package:easeexpress/data/repositories/servico/servico_repository.dart';
import 'package:easeexpress/domain/servico.dart';

class HomeCtrl {

  ServicoRepository repository = ServicoRepository();

  List<Servico> search() {
    return repository.all();
  }

}