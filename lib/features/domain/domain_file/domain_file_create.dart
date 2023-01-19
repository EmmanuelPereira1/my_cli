import 'dart:io';
import 'package:my_cli_snowman/core/create_file/custom_file.dart';
import 'package:my_cli_snowman/core/write_files/abstract_class.dart';

Future<void> domainFile(String domainFile) async {
await File(domainFile).create(recursive: true).then(
          (file) => {print('Seu arquivo foi criado com sucesso ${file.path}')})
      // ignore: invalid_return_type_for_catch_error
      .catchError((error) => print('Deu ruim o arquivo :( $error'));

  // ignore: unrelated_type_equality_checks
  if (CustomFile (yaml:domainFile).exists() != false) {
   await CustomFile(yaml:domainFile).writeAsString(
    AbstractClassDart.domain
   );
  }
}
