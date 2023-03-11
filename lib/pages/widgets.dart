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

    return Accordion(maxOpenSections: 1, children: sections);
  }

  AccordionSection buildAccordionSection({required String title, required List accordionItems}){
    return AccordionSection(header: Text(title), content: Column(
    children: accordionItems.map((accordionItem) => Card(
        child: ListTile(
          title: Text(accordionItem['title']),
          onTap: () {
            context.push(accordionItem['path']);
          },
        ))).toList()
    ));
  }
}

List<Map<String, String>> mediaExamples = [
  {'title' : 'Fade In Image', 'path' : '/widgets/fade-in-image'},
  {'title' : 'Hero Widget', 'path' : '/widgets/hero'},
];

List<Map<String, String>> layoutExamples = [
  {'title' : 'Layout Builder', 'path' : '/widgets/layout-builder'},
  {'title' : 'Page View', 'path' : '/widgets/pageview'},
];

List<Map<String, String>> displayExamples = [
  {'title' : 'Opacity Widget', 'path' : '/widgets/opacity'},
];