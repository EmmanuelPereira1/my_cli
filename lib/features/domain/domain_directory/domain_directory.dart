import 'dart:io';

import 'package:my_cli_snowman/core/create_file/custom_file.dart';
import 'package:my_cli_snowman/features/domain/domain_file/domain_file_create.dart';

Future<void> domainDirectory(String domainDirectory) async {
  Directory(domainDirectory).create(recursive: true).then((folder) {
    print('Sua pasta interna foi criada com sucesso ${folder.path}');
    // ignore: invalid_return_type_for_catch_error
  }).catchError((error) => print('Deu ruim :( $error'));
  
  domainFile('domain.dart');
}
