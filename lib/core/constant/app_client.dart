import 'package:flint_client/flint_client.dart';

class AppClient {
  static final client = FlintClient(
    baseUrl: "http://10.0.2.2:3000",
    debug: true,
    onError: (error) {
      print(error.message);
    },
  );
}
