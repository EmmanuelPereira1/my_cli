
import 'package:my_cli_snowman/core/create_file/custom_file.dart';

Future<void> domainFile(String domainFile) async {

CustomFile(yaml: domainFile)
      .create(recursive: true)
      .then(
          (file) => {print('Seu arquivo foi criado com sucesso ${file.path}')})
      // ignore: invalid_return_type_for_catch_error
      .catchError((error) => print('Deu ruim o arquivo :( $error'));
}
