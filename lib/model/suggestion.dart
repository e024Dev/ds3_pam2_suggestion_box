import 'package:ds3_pam2_suggestion_box/model/course.dart';
import 'package:ds3_pam2_suggestion_box/model/suggestion_enum.dart';
import 'package:flutter/cupertino.dart';

class Suggestion {
  int? id;
  String? content;
  Course? course;
  SuggestionType? suggestionType;
  String? name;
  DateTime? dateTime;

  Suggestion(
      {this.id,
      @required this.content,
      @required this.course,
      @required this.suggestionType,
      this.name,
      this.dateTime});
}
