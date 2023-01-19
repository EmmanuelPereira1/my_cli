import 'dart:io';

Future<void> domainDirectory(String domainDirectory) async {
  Directory(domainDirectory).create(recursive: true).then((folder) {
    print('Sua pasta interna foi criada com sucesso ${folder.path}');
    // ignore: invalid_return_type_for_catch_error
  }).catchError((error) => print('Deu ruim :( $error'));
}
