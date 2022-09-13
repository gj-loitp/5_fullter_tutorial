import 'dart:async';

import '../db/DbProvider.dart';
import '../model/ClientModel.dart';

/**
 * Created by Loitp on 05,August,2022
 * Galaxy One company,
 * Vietnam
 * +840766040293
 * freuss47@gmail.com
 */
class ClientsBloc {
  ClientsBloc() {
    getAllClients();
  }

  final _clientController = StreamController<List<Client>>.broadcast();

  get clientStream => _clientController.stream;

  getAllClients() async {
    _clientController.sink.add(await DBProvider.db.getAllClients());
  }

  Future<void> blockUnblock(Client client) async {
    await DBProvider.db.blockOrUnblock(client);
    await getAllClients();
  }

  Future<void> delete(int? id) async {
    await DBProvider.db.deleteClientById(id);
    await getAllClients();
  }

  Future<void> add(Client client) async {
    await DBProvider.db.addClient(client);
    await getAllClients();
  }

  dispose() {
    _clientController.close();
  }
}
