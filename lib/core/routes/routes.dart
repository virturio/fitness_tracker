import 'package:fitness_tracker/view/auth/login/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _pageKey = ValueKey("_pageKey");
final _rootNavigationKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigationKey,
  routes: [
    GoRoute(
      path: "/",
      pageBuilder: (context, state) => const MaterialPage(
        key: _pageKey,
        child: LoginPage(),
      ),
    ),
  ],
);
