import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

import '../components/widget_builds.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({super.key});

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {

  @override
  Widget build(BuildContext context) {
    List<AccordionSection> sections = [
      buildAccordionSection(context, title: "Media", accordionItems: mediaExamples),
      buildAccordionSection(context, title: 'Animated Packages', accordionItems: animatedExamples),
    ];

    return Accordion(
      maxOpenSections: 1,
      scaleWhenAnimating: false,
      headerPadding: const EdgeInsets.all(20),
      children: sections,
    );
  }
}

List<Map<String, String>> animatedExamples = [
  {'title': 'Flutter Spinkit', 'path': '/packages/flutter_spinkit'},
];

List<Map<String, String>> mediaExamples = [
  {'title': 'Video Player', 'path': '/packages/video-player'},
  {'title': 'Youtube Player Iframe', 'path': '/packages/youtube-player-iframe'},
  {'title': 'Image and Video Picker', 'path': '/packages/image-picker'},
];