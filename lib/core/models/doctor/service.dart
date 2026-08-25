// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@Freezed(toJson: false)
abstract class ServiceSummary with _$ServiceSummary {
  const ServiceSummary._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory ServiceSummary({
    required String serviceID,
    required String serviceDate,
    required String serviceName,
    required String serviceStartTime,
    required String serviceProviderDisplayedName,
    required String serviceProviderDisplayedTag,
  }) = _ServiceSummary;

  factory ServiceSummary.fromJson(Map<String, dynamic> json) =>
      _$ServiceSummaryFromJson(json);
}

@Freezed(toJson: false)
abstract class ServiceSummaryList with _$ServiceSummaryList {
  const ServiceSummaryList._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory ServiceSummaryList({
    required List<ServiceSummary> serviceSummaryList,
  }) = _ServiceSummaryList;

  factory ServiceSummaryList.fromJson(Map<String, dynamic> json) =>
      _$ServiceSummaryListFromJson(json);
}
