import 'package:flutter/material.dart';
import 'package:reverpod_project/presentation/pages/user_list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: RiverpodApp()));
}

class RiverpodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: "Riverpod MVVM-Clean Architecture Example",
      home: UserListPage(),
    );
  }
}
