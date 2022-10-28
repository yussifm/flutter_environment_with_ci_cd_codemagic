import 'environment.dart';
import 'main_common.dart';

Future<void> main() async {
  await mainCommon(env: Environment.dev);
}
