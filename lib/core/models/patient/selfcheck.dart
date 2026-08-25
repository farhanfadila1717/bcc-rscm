// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selfcheck.freezed.dart';
part 'selfcheck.g.dart';

@Freezed(toJson: false)
abstract class SelftcheckSummary with _$SelftcheckSummary {
  const SelftcheckSummary._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory SelftcheckSummary({
    required String selfCheckID,
    required String selfCheckDate,
    required int selfCheckItemCount,
  }) = _SelftcheckSummary;

  factory SelftcheckSummary.fromJson(Map<String, dynamic> json) =>
      _$SelftcheckSummaryFromJson(json);
}

@Freezed(toJson: false)
abstract class SelftcheckSummaryList with _$SelftcheckSummaryList {
  const SelftcheckSummaryList._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory SelftcheckSummaryList({
    required List<SelftcheckSummary> selfCheckSummaryList,
  }) = _SelftcheckSummaryList;

  factory SelftcheckSummaryList.fromJson(Map<String, dynamic> json) =>
      _$SelftcheckSummaryListFromJson(json);
}

@Freezed(toJson: false)
abstract class SelfcheckAsset with _$SelfcheckAsset {
  const SelfcheckAsset._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory SelfcheckAsset({
    required String assetID,
    required String assetName,
    required String assetPhotoUrlPath,
  }) = _SelfcheckAsset;

  factory SelfcheckAsset.fromJson(Map<String, dynamic> json) =>
      _$SelfcheckAssetFromJson(json);
}

@Freezed(toJson: false)
abstract class SelfcheckDetailResponse with _$SelfcheckDetailResponse {
  const SelfcheckDetailResponse._();

  @JsonSerializable(fieldRename: .pascal, createToJson: false)
  const factory SelfcheckDetailResponse({
    required List<SelfcheckAsset> assetItemList,
  }) = _SelfcheckDetailResponse;

  factory SelfcheckDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$SelfcheckDetailResponseFromJson(json);
}
