import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

final app = myRouter();
void main() async {
  var server = await shelf_io.serve(app, 'localhost', 8080);
  server.autoCompress = true;
  print('Serving at http://${server.address.host}:${server.port}');
}

Router myRouter() {
  final router = Router();

  router.get('/', (request) {
    return Response.ok('Welcome to the Front Page');
  });

  router.get('/home', (request) {
    return Response.ok('Welcome to the Home Page');
  });

  return router;
}
