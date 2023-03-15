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
      buildAccordionSection(context, title: "Displays", accordionItems: mediaExamples),
    ];

    return Accordion(
      maxOpenSections: 1,
      scaleWhenAnimating: false,
      headerPadding: const EdgeInsets.all(20),
      children: sections,
    );
  }
}

List<Map<String, String>> mediaExamples = [
  {'title': 'Video Player', 'path': '/packages/video-player'},
];