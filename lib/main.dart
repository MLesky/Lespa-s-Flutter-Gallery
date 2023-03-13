import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_gallery/pages/animation.dart';
import 'package:my_flutter_gallery/pages/widgets.dart';
import 'package:my_flutter_gallery/pages/packages.dart';
import 'package:my_flutter_gallery/pages/widgets/about_dialog.dart';
import 'package:my_flutter_gallery/pages/widgets/absorb_pointer.dart';
import 'package:my_flutter_gallery/pages/widgets/alert_dialog.dart';
import 'package:my_flutter_gallery/pages/widgets/align_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/animated_container.dart';
import 'package:my_flutter_gallery/pages/widgets/animated_crossfade.dart';
import 'package:my_flutter_gallery/pages/widgets/animated_opacity.dart';
import 'package:my_flutter_gallery/pages/widgets/animated_padding.dart';
import 'package:my_flutter_gallery/pages/widgets/fade_in_image.dart';
import 'package:my_flutter_gallery/pages/widgets/hero_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/layout_builder.dart';
import 'package:my_flutter_gallery/pages/widgets/opacity_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/page_view_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/table_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/wrap_widget.dart';

import 'components/scaffold_with_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routerConfig: routes,
    );
  }
}

GoRouter routes = GoRouter(initialLocation: '/widgets', routes: [
  ShellRoute(
    routes: [
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/widgets',
        name: 'widget',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
              path: 'fade-in-image',
              builder: (context, state) => const FadeInImageExample()),
          GoRoute(
              path: 'hero',
              builder: (context, state) => const HeroWidgetExample()),
          GoRoute(
              path: 'layout-builder',
              builder: (context, state) => const LayoutWidgetExample()),
          GoRoute(
              path: 'opacity',
              builder: (context, state) => const OpacityWidgetExample()),
          GoRoute(
              path: 'page-view',
              builder: (context, state) => const PageViewWidgetExample()),
          GoRoute(
              path: 'table',
              builder: (context, state) => const TableWidgetExample()),
          GoRoute(
              path: 'wrap',
              builder: (context, state) => const WrapWidgetExample()),
          GoRoute(
              path: 'about-dialog',
              builder: (context, state) => const AboutDialogExample()),
          GoRoute(
              path: 'absorb-pointer',
              builder: (context, state) => const AbsorbPointerExample()),
          GoRoute(
              path: 'alert-dialog',
              builder: (context, state) => const AlertDialogExample()),
          GoRoute(
              path: 'align',
              builder: (context, state) => const AlignWidgetExample()),
          GoRoute(
              path: 'animated-container',
              builder: (context, state) => const AnimatedContainerExample()),
          GoRoute(
            path: 'cross-fade',
            builder: (context, state) => const AnimatedCrossFadeExample(),
          ),
          GoRoute(
            path: 'animated-opacity',
            builder: (context, state) => const AnimatedOpacityExample(),
          ),
          GoRoute(
            path: 'animated-padding',
            builder: (context, state) => const AnimatedPaddingExample(),
          )
        ],
      ),
      GoRoute(
          path: '/packages',
          name: 'package',
          builder: (context, state) => const PackagesScreen()),
      GoRoute(
          path: '/animations',
          name: 'animation',
          builder: (context, state) => const AnimationScreen()),
    ],
    builder: (context, state, child) => ScaffoldWithBottomNavBar(
      child: child,
    ),
  )
]);
