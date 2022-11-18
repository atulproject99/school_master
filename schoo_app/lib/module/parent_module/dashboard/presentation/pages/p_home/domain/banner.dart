// To parse this JSON data, do
//
//     final banner = bannerFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'banner.freezed.dart';
part 'banner.g.dart';

Banner bannerFromJson(String str) => Banner.fromJson(json.decode(str));

String bannerToJson(Banner data) => json.encode(data.toJson());

@freezed
abstract class Banner with _$Banner {
  const factory Banner({
    required String image,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}
