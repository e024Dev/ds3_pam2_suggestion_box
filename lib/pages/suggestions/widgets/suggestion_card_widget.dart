import 'package:ds3_pam2_suggestion_box/model/suggestion.dart';
import 'package:ds3_pam2_suggestion_box/model/ui_adapter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SuggestionCard extends StatelessWidget implements UIAdapter {
  final Suggestion suggestion;

  const SuggestionCard({
    Key? key,
    required this.suggestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        ListTile(
          leading: const Icon(Icons.adb),
          title: Text(
            suggestion.suggestionType!.descriptionType!,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  suggestion.content!,
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(suggestion.course!.descrition!),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(DateFormat.yMd().format(suggestion.dateTime!)),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  @override
  IconData? getIcon(int id) {
    switch (id) {
    }
    return Icons.adb;
  }
}
