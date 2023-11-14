import 'package:my_flutter_gallery/pages/animation.dart';
import 'package:my_flutter_gallery/pages/widgets.dart';
import 'package:my_flutter_gallery/pages/packages.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_gallery/pages/packages/bloc_pattern.dart';

import '../components/scaffold_with_bottom_nav_bar.dart';


/// The [routes] of type [GoRouter] has all it's [routes] wrap in a [ShellRoute]
/// The [ShellRoute] is the [ScaffoldWithBottomNavBar] which is a [Scaffold] with a [BottomNavigationBar]
/// All other widgets are descendants of the [ScaffoldWithBottomNavBar]
/// There are three Top Level [routes]: [HomeScreen] (Widgets), [PackagesScreen] (Packages), and [AnimationScreen] (Animation)
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
          GoRoute(
              path: 'gesture-detector',
              builder: (context, state) => const GestureDetectorExample()),
          GoRoute(
              path: 'flutter-inputs',
              builder: (context, state) => FlutterInputFields()),
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
                routes: [
                  GoRoute(
                      path: 'read-watch-select',
                      builder: (context, state) =>
                      const ProviderReadWatchAndSelect()),
                  GoRoute(
                      path: 'theme-provider',
                      builder: (context, state) =>
                      const ThemeProviderExample()),
                ]),
            GoRoute(
                path: 'syncfusion-pdf-reader',
                builder: (context, state) =>
                const SyncfusionPdfReaderExample()),
            GoRoute(
                path: 'flutter-pdf-view',
                builder: (context, state) => const FlutterPdfViewExample()),
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