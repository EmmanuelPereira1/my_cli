import 'dart:io';
import 'package:my_cli_snowman/core/create_file/custom_file.dart';
import 'package:my_cli_snowman/features/data_source/data_source_directory/data_source_directory.dart';
import 'package:my_cli_snowman/features/data_source/data_source_file/data_source_file_create.dart';
import 'package:my_cli_snowman/features/domain/domain_file/domain_file_create.dart';
import 'package:my_cli_snowman/features/view/view_file/view_file_create.dart';
import 'features/domain/domain_directory/domain_directory.dart';
import 'features/view/view_directory/view_directory.dart';

Future<void> folders() async {
  print('Qual nome da sua pasta?');
  final name = stdin.readLineSync();
  final String path = '${Directory.current.path}/lib/$name';
  // ignore: unnecessary_null_comparison
  Directory('${Directory.current.path}/lib/$name')
      .create(recursive: true)
      .then((folder) {
    print('Sua pasta foi criada com sucesso! ${folder.path}');
    // ignore: invalid_return_type_for_catch_error
  }).catchError((error) => print('Deu ruim :( $error'));
  dataSourceDirectory('$path/data_source');
  domainDirectory('$path/domain');
  viewDirectory('$path/view');
  domainFile('$path/domain/domain.dart');
  viewFile('$path/view/view.dart');
  dataSourceFile('$path/data_source/data_source.dart');
}
