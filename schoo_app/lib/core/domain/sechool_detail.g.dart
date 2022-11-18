// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sechool_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SchoolDetails _$$_SchoolDetailsFromJson(Map<String, dynamic> json) =>
    _$_SchoolDetails(
      branchName: json['branch_name'] as String?,
      upiKey: json['upi_id'] as String?,
      privacypolicy: json['privacypolicy'] as String?,
      about: json['about'] as String?,
      logo: json['logo'] as String?,
      contactUs: json['contact_us'] as String?,
    );

Map<String, dynamic> _$$_SchoolDetailsToJson(_$_SchoolDetails instance) =>
    <String, dynamic>{
      'branch_name': instance.branchName,
      'upi_id': instance.upiKey,
      'privacypolicy': instance.privacypolicy,
      'about': instance.about,
      'logo': instance.logo,
      'contact_us': instance.contactUs,
    };
