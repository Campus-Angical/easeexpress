import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easeexpress/domain/servico.dart';

class ServicoRepository {

  List<Servico> all() {
    print('all');
    FirebaseFirestore.instance.collection('servicos').get().then((snapshot) {
      print(snapshot.docs);
      snapshot.docs.forEach((element) {
        print(element);
      });
    });

    return [
      Servico('teste', 100, 'teste', 'https://www.pocosja.com.br/divirta-se/wp-content/uploads/2017/09/DSC0415.jpg'),
      Servico('teste02', 50, '02', 'https://saude.abril.com.br/wp-content/uploads/2016/11/cachorro-molhado.jpg')
    ];
  }

}