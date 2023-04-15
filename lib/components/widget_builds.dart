import 'package:accordion/accordion_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// [buildAccordionSection] function returns an [AccordionSection] widget which is from the Accordion package. It is use to build the menu for accessing the widgets, packages and animations
/// it takes in a List of [accordionItems] and a [title] of type [String]
AccordionSection buildAccordionSection(BuildContext context,
    {required String title, required List accordionItems}) {
  return AccordionSection(
      leftIcon: const Icon(Icons.play_arrow, color: Colors.white),
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