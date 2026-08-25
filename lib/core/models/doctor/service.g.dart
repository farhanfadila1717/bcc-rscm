// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceSummary _$ServiceSummaryFromJson(
  Map<String, dynamic> json,
) => _ServiceSummary(
  serviceID: json['ServiceID'] as String,
  serviceDate: json['ServiceDate'] as String,
  serviceName: json['ServiceName'] as String,
  serviceStartTime: json['ServiceStartTime'] as String,
  serviceProviderDisplayedName: json['ServiceProviderDisplayedName'] as String,
  serviceProviderDisplayedTag: json['ServiceProviderDisplayedTag'] as String,
);

_ServiceSummaryList _$ServiceSummaryListFromJson(Map<String, dynamic> json) =>
    _ServiceSummaryList(
      serviceSummaryList: (json['ServiceSummaryList'] as List<dynamic>)
          .map((e) => ServiceSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
