
import 'package:my_cli_snowman/core/generic.dart';

class AbstractClassDart {
  static String domain = r'''
  import 'package:my_cli_snowman/core/generic.dart';

  abstract class DomainUseCase {
  Future<Generic> domainUseCase(
      String generic, String generic1);
}
''';

 static String view = r'''
  import 'package:my_cli_snowman/core/generic.dart';

  abstract class ViewUseCase {
  Future<Generic> viewUseCase(
      String generic, String generic1);
}
''';

 static String dataSource = r'''
  import 'package:my_cli_snowman/core/generic.dart';

  abstract class DataSourceUseCase {
  Future<Generic> dataSourceUseCase(
      String generic, String generic1);
}
''';
}
  
