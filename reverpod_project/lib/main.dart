import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reverpod_project/domain/entities/user.dart';
import 'package:reverpod_project/presentation/pages/user_detail_page.dart';
import 'package:reverpod_project/presentation/pages/user_list_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: RiverpodApp()));

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const UserScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (context, state) {
            final userInfo = state.extra as User;
            return UserDetailPage(userInfo: userInfo);
          },
        ),
      ],
    ),
  ],
);

class RiverpodApp extends StatelessWidget {
  const RiverpodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const UserListPage();
  }
}
