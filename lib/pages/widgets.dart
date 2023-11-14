import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import '../components/widget_builds.dart';

export 'package:my_flutter_gallery/pages/widgets/about_dialog.dart';
export 'package:my_flutter_gallery/pages/widgets/absorb_pointer.dart';
export 'package:my_flutter_gallery/pages/widgets/alert_dialog.dart';
export 'package:my_flutter_gallery/pages/widgets/align_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/animated_container.dart';
export 'package:my_flutter_gallery/pages/widgets/animated_crossfade.dart';
export 'package:my_flutter_gallery/pages/widgets/animated_opacity.dart';
export 'package:my_flutter_gallery/pages/widgets/animated_padding.dart';
export 'package:my_flutter_gallery/pages/widgets/animated_position.dart';
export 'package:my_flutter_gallery/pages/widgets/fade_in_image.dart';
export 'package:my_flutter_gallery/pages/widgets/flutter_buttons.dart';
export 'package:my_flutter_gallery/pages/widgets/flutter_tabs.dart';
export 'package:my_flutter_gallery/pages/widgets/flutter_theme.dart';
export 'package:my_flutter_gallery/pages/widgets/gesture_detector.dart';
export 'package:my_flutter_gallery/pages/widgets/hero_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/inherited_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/layout_builder.dart';
export 'package:my_flutter_gallery/pages/widgets/navigation_drawer.dart';
export 'package:my_flutter_gallery/pages/widgets/opacity_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/page_view_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/scaffold_appbar.dart';
export 'package:my_flutter_gallery/pages/widgets/scaffold_snackbar.dart';
export 'package:my_flutter_gallery/pages/widgets/stateful_builder.dart';
export 'package:my_flutter_gallery/pages/widgets/table_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/wrap_widget.dart';
export 'package:my_flutter_gallery/pages/widgets/flutter_inputs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<AccordionSection> sections = [
      buildAccordionSection(context, title: "Basics", accordionItems: basicExamples),
      buildAccordionSection(context, title: "Displays", accordionItems: displayExamples),
      buildAccordionSection(context, title: "Layouts", accordionItems: layoutExamples),
      buildAccordionSection(context, title: 'Scaffold', accordionItems: scaffoldExamples),
      buildAccordionSection(context, title: 'Animated Widgets', accordionItems: animatedExamples),
      buildAccordionSection(context, title: "Media", accordionItems: mediaExamples),
      buildAccordionSection(context, title: 'Events', accordionItems: eventExamples),
      buildAccordionSection(context, title: 'Builders', accordionItems: builderExamples),
      buildAccordionSection(context, title: 'State management', accordionItems: stateManagementExamples),
    ];

    return Accordion(
      maxOpenSections: 1,
      scaleWhenAnimating: false,
      headerPadding: const EdgeInsets.all(20),
      children: sections,
    );
  }
}

List<Map<String, String>> basicExamples = [
  {'title': 'Flutter Buttons', 'path': '/widgets/flutter-buttons'},
  {'title': 'Flutter Input', 'path': '/widgets/flutter-inputs'},
];

List<Map<String, String>> mediaExamples = [
  {'title': 'Fade In Image', 'path': '/widgets/fade-in-image'},
  {'title': 'Hero Widget', 'path': '/widgets/hero'},
];

List<Map<String, String>> layoutExamples = [
  {'title': 'Wrap', 'path': '/widgets/wrap'},
  {'title': 'Table', 'path': '/widgets/table'},
  {'title': 'Align', 'path': '/widgets/align'},
  {'title': 'Layout Builder', 'path': '/widgets/layout-builder'},
  {'title': 'Page View', 'path': '/widgets/page-view'},
];

List<Map<String, String>> displayExamples = [
  {'title': 'Opacity Widget', 'path': '/widgets/opacity'},
  {'title': 'Alert Dialog', 'path': '/widgets/alert-dialog'},
  {'title': 'About Dialog', 'path': '/widgets/about-dialog'},
];

List<Map<String, String>> eventExamples = [
  {'title': 'Absorb Pointer', 'path': '/widgets/absorb-pointer'},
  {'title': 'Gesture Detector', 'path': '/widgets/gesture-detector'},
];

List<Map<String, String>> animatedExamples = [
  {'title': 'Animated Opacity', 'path' : '/widgets/animated-opacity'},
  {'title': 'Animated Cross Fade', 'path' : '/widgets/cross-fade'},
  {'title': 'Animated Container', 'path' : '/widgets/animated-container'},
  {'title': 'Animated Padding', 'path' : '/widgets/animated-padding'},
  {'title': 'Animated Positioned', 'path' : '/widgets/animated-positioned'},
];

List<Map<String, String>> scaffoldExamples = [
  {'title': 'Scaffold AppBar', 'path': '/widgets/scaffold-appbar'},
  {'title': 'Scaffold Navigation Drawer', 'path': '/widgets/nav-drawer'},
  {'title': 'Scaffold SnackBar', 'path': '/widgets/scaffold-snack-bar'},
  {'title': 'Tap Bar', 'path': '/widgets/flutter-tabs'},
  {'title': 'Flutter Theme', 'path': '/widgets/flutter-theme'},
];

List<Map<String, String>> builderExamples = [
  {'title': 'Stateful Builder', 'path': '/widgets/stateful-builder'},
  {'title': 'Layout Builder', 'path': '/widgets/layout-builder'},
];

List<Map<String, String>> stateManagementExamples = [
  {'title': 'Stateful Builder', 'path': '/widgets/stateful-builder'},
  {'title': 'Inherited Widget', 'path': '/widgets/inherited-widget'},
];