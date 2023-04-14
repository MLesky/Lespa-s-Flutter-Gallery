import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_gallery/pages/animation.dart';
import 'package:my_flutter_gallery/pages/packages/flutter_spinkit_package.dart';
import 'package:my_flutter_gallery/pages/packages/image_picker_package.dart';
import 'package:my_flutter_gallery/pages/packages/provider.dart';
import 'package:my_flutter_gallery/pages/packages/provider_of_context.dart';
import 'package:my_flutter_gallery/pages/packages/video_player_package.dart';
import 'package:my_flutter_gallery/pages/packages/youtube_player_iframe.dart';
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
import 'package:my_flutter_gallery/pages/widgets/animated_position.dart';
import 'package:my_flutter_gallery/pages/packages/bloc_pattern.dart';
import 'package:my_flutter_gallery/pages/widgets/fade_in_image.dart';
import 'package:my_flutter_gallery/pages/widgets/flutter_buttons.dart';
import 'package:my_flutter_gallery/pages/widgets/flutter_tabs.dart';
import 'package:my_flutter_gallery/pages/widgets/flutter_theme.dart';
import 'package:my_flutter_gallery/pages/widgets/hero_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/inherited_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/layout_builder.dart';
import 'package:my_flutter_gallery/pages/widgets/navigation_drawer.dart';
import 'package:my_flutter_gallery/pages/widgets/opacity_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/page_view_widget.dart';
import 'package:my_flutter_gallery/pages/widgets/scaffold_appbar.dart';
import 'package:my_flutter_gallery/pages/widgets/scaffold_snackbar.dart';
import 'package:my_flutter_gallery/pages/widgets/stateful_builder.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
              path: 'flutter-buttons',
              builder: (context, state) => const FlutterButtonsExample()),
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
          ),
          GoRoute(
            path: 'animated-positioned',
            builder: (context, state) => const AnimatedPositionedExample(),
          ),
          GoRoute(
            path: 'scaffold-appbar',
            builder: (context, state) => const ScaffoldAppBarExample(),
          ),
          GoRoute(
            path: 'nav-drawer',
            builder: (context, state) =>
                const ScaffoldNavigationDrawerExample(),
          ),
          GoRoute(
            path: 'scaffold-snack-bar',
            builder: (context, state) => const ScaffoldSnackBarExample(),
          ),
          GoRoute(
            path: 'flutter-tabs',
            builder: (context, state) => const FlutterTabsExample(),
          ),
          GoRoute(
            path: 'flutter-theme',
            builder: (context, state) => const FlutterThemeExample(),
          ),
          GoRoute(
            path: 'stateful-builder',
            builder: (context, state) => const StateFulBuilderExample(),
          ),
          GoRoute(
            path: 'inherited-widget',
            builder: (context, state) => InheritedWidgetExample(
                child: const InheritedWidgetTestExample()),
          ),
        ],
      ),
      GoRoute(
          path: '/packages',
          name: 'package',
          builder: (context, state) => const PackagesScreen(),
          routes: [
            GoRoute(
                path: 'video-player',
                builder: (context, state) => const VideoPlayerExample(
                      link: 'assets/videos/bouncing_ball.mp4',
                    )),
            GoRoute(
              path: 'youtube-player-iframe',
              builder: (context, state) => const YouTubePlayerIframeExample(),
            ),
            GoRoute(
              path: 'image-picker',
              builder: (context, state) => const ImagePickerExample(),
            ),
            GoRoute(
              path: 'flutter_spinkit',
              builder: (context, state) => const FlutterSpinkitExample(),
            ),
            GoRoute(
              path: 'bloc-pattern',
              builder: (context, state) => const BlocHome(),
            ),
            GoRoute(
                path: 'provider',
                builder: (context, state) => const ProviderScreenState(),
                ),
            GoRoute(path: 'provider-read', builder: (context, state) => const ProviderRead())
          ]),
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
