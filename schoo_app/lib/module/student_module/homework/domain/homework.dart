// To parse this JSON data, do
//
//     final homework = homeworkFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'homework.freezed.dart';
part 'homework.g.dart';

Homework homeworkFromJson(String str) => Homework.fromJson(json.decode(str));

String homeworkToJson(Homework data) => json.encode(data.toJson());

@freezed
abstract class Homework with _$Homework {
  const factory Homework({
    int? id,
    @JsonKey(name: "class") String? homeworkClass,
    String? subject,
    String? pdf,
    String? videolink,
    String? date,
    String? responsestatus,
  }) = _Homework;

  factory Homework.fromJson(Map<String, dynamic> json) =>
      _$HomeworkFromJson(json);
}
