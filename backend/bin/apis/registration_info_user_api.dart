// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../services/generic_service.dart';

//registration-info-user/
class RegistrationInfoUserApi {
  final GenericService _service;

  RegistrationInfoUserApi(
    this._service,
  );

  Handler get handler {
    Router router = Router();

    //GET
    router.get('/registration-info-user/', (Request req) async {
      _service.findAll();
      return Response.ok('deveria retornar os dados de informação do usuário');
    });

    router.post('/registration-info-user/', (Request req) async {
      var result = await req.readAsString();
      Map json = jsonDecode(result);
      final String? name = json['name'];
      final String? width = json['width'];
      final String? height = json['height'];
      final String? dateOfBirth = json['date_of_birth'];

      if (name != null) {
        if (width != null) {
          if (height != null) {
            if (dateOfBirth != null) {
              print('infomações de usuário cadastrado com sucesso');
              // _service.save('');
              return Response.ok(result,
                  headers: {'content-type': 'text/json'});
            }
          }
        }
      }
      return Response.notFound('Erro de requisição');
    });

    return router;
  }
}
