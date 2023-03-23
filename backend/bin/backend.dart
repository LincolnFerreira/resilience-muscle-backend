import 'package:shelf/shelf.dart';

import 'apis/login_api.dart';
import 'apis/registration_info_user_api.dart';
import 'infra/custom_server.dart';
import 'services/registration_info_user_service.dart';
import 'utils/custom_env.dart';

void main() async {
  //().handler é o que está devolvendo, ou seja, está devolvendo o handler inserido

  var cascadeHandler = Cascade()
      .add(LoginApi().handler)
      .add(RegistrationInfoUserApi(RegistrationInfoUserService()).handler)
      .handler;

//meio de campo | vai nos trazer o log - contexto da nossa api
  var handler =
      Pipeline().addMiddleware(logRequests()).addHandler(cascadeHandler);

  CustomServer().initialize(
    handler: handler,
    address: await CustomEnv.get<String>(key: 'server_address'),
    port: await CustomEnv.get<int>(key: 'server_port'),
  );
}
