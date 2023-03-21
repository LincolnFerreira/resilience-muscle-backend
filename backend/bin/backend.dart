import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

Future<void> main(List<String> arguments) async {
  final server = await shelf_io.serve(
      (request) => Response(200, body: 'ok'), 'localhost', 8082);

  print('Servidor iniciado!!\n http://localhost:8082');
}
