import 'package:environment_with_ci_cd/environment.dart';
import 'package:environment_with_ci_cd/main_common.dart';

Future<void> main() async {
  await mainCommon(env: Environment.prod);
}
