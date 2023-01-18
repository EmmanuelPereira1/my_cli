import 'dart:io';
import 'package:my_cli_snowman/features/data_source/data_source_directory/data_source_directory.dart';
import 'features/domain/domain_directory/domain_directory.dart';
import 'features/view/view_directory/view_directory.dart';

Future<void> folders() async {
  print('Qual nome da sua pasta?');
  final name = stdin.readLineSync();
  // ignore: unnecessary_null_comparison
 
  Directory('${Directory.current.path}/$name')
      .create(recursive: true)
      .then((folder) {
    print('Sua pasta foi criada com sucesso! ${folder.path}');
    // ignore: invalid_return_type_for_catch_error
  }).catchError((error) => print('Deu ruim :( $error'));
   if (name == null) {
    'teste';
  }
  dataSourceDirectory('${Directory.current.path}/$name/data_source');
  domainDirectory('${Directory.current.path}/$name/domain');
  viewDirectory('${Directory.current.path}/$name/view');
}
