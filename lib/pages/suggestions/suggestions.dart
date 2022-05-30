import 'package:ds3_pam2_suggestion_box/model/course.dart';
import 'package:ds3_pam2_suggestion_box/model/suggestion.dart';
import 'package:ds3_pam2_suggestion_box/model/suggestion_enum.dart';
import 'package:ds3_pam2_suggestion_box/pages/suggestions/widgets/suggestion_card_widget.dart';
import 'package:flutter/material.dart';

class SuggestionsPage extends StatefulWidget {
  const SuggestionsPage({Key? key}) : super(key: key);

  @override
  State<SuggestionsPage> createState() => _SuggestionsPageState();
}

class _SuggestionsPageState extends State<SuggestionsPage> {
  List<Suggestion> suggestions = [
    Suggestion(
        dateTime: DateTime.now(),
        content: 'Lorem ipsum dolor site amet.',
        course: Course(descrition: 'Sistemas'),
        suggestionType: SuggestionType.comentario),
    Suggestion(
        dateTime: DateTime.now(),
        content: 'Lorem ipsum dolor site amet.',
        course: Course(descrition: 'Sistemas'),
        suggestionType: SuggestionType.critica),
    Suggestion(
        dateTime: DateTime.now(),
        content:
            'Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.Lorem ipsum dolor site amet.',
        course: Course(descrition: 'Sistemas'),
        suggestionType: SuggestionType.elogio),
    Suggestion(
        dateTime: DateTime.now(),
        content: 'Lorem ipsum dolor site amet.',
        course: Course(descrition: 'Sistemas'),
        suggestionType: SuggestionType.sugestao)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suggestions'),
      ),
      body: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            var suggestion = suggestions[index];
            return SuggestionCard(suggestion: suggestion);
          }),
    );
  }
}
