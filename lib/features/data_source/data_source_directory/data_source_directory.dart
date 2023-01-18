import 'dart:io';

Future<void> dataSourceDirectory(String dataSourceDirectory) async {
  Directory(dataSourceDirectory).create(recursive: true).then((folder) {
    print('Sua pasta interna foi criada com sucesso ${folder.path}');
  // ignore: invalid_return_type_for_catch_error
  }).catchError((error) => print('Deu ruim :( $error'));
}

