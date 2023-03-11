import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<AccordionSection> sections = [
      buildAccordionSection(title: "Displays", accordionItems: displayExamples),
      buildAccordionSection(title: "Layouts", accordionItems: layoutExamples),
      buildAccordionSection(title: "Media", accordionItems: mediaExamples),
    ];

    return Accordion(
      maxOpenSections: 1,
      scaleWhenAnimating: false,
      headerPadding: const EdgeInsets.all(20),
      children: sections,
    );
  }

  AccordionSection buildAccordionSection(
      {required String title, required List accordionItems}) {
    return AccordionSection(
        header: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.0)),
        content: Column(
            children: accordionItems
                .map((accordionItem) => Card(
                        color: Colors.white70,
                        elevation: 2.0,
                        child: ListTile(
                      title: Text(accordionItem['title'], style: const TextStyle(color: Colors.indigo),),
                      onTap: () {
                        context.push(accordionItem['path']);
                      },
                    )))
                .toList()));
  }
}

List<Map<String, String>> mediaExamples = [
  {'title': 'Fade In Image', 'path': '/widgets/fade-in-image'},
  {'title': 'Hero Widget', 'path': '/widgets/hero'},
];

List<Map<String, String>> layoutExamples = [
  {'title': 'Table', 'path': '/widgets/table'},
  {'title': 'Layout Builder', 'path': '/widgets/layout-builder'},
  {'title': 'Page View', 'path': '/widgets/page-view'},
];

List<Map<String, String>> displayExamples = [
  {'title': 'Opacity Widget', 'path': '/widgets/opacity'},
];
