import 'package:flutter/material.dart';

class FilesRepository extends StatefulWidget {
  const FilesRepository({super.key});

  @override
  State<FilesRepository> createState() => _FilesRepositoryState();
}

class _FilesRepositoryState extends State<FilesRepository> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Files Recognition")));
  }
}
