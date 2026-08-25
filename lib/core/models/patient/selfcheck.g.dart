// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selfcheck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SelftcheckSummary _$SelftcheckSummaryFromJson(Map<String, dynamic> json) =>
    _SelftcheckSummary(
      selfCheckID: json['SelfCheckID'] as String,
      selfCheckDate: json['SelfCheckDate'] as String,
      selfCheckItemCount: (json['SelfCheckItemCount'] as num).toInt(),
    );

_SelftcheckSummaryList _$SelftcheckSummaryListFromJson(
  Map<String, dynamic> json,
) => _SelftcheckSummaryList(
  selfCheckSummaryList: (json['SelfCheckSummaryList'] as List<dynamic>)
      .map((e) => SelftcheckSummary.fromJson(e as Map<String, dynamic>))
      .toList(),
);

_SelfcheckAsset _$SelfcheckAssetFromJson(Map<String, dynamic> json) =>
    _SelfcheckAsset(
      assetID: json['AssetID'] as String,
      assetName: json['AssetName'] as String,
      assetPhotoUrlPath: json['AssetPhotoUrlPath'] as String,
    );

_SelfcheckDetailResponse _$SelfcheckDetailResponseFromJson(
  Map<String, dynamic> json,
) => _SelfcheckDetailResponse(
  assetItemList: (json['AssetItemList'] as List<dynamic>)
      .map((e) => SelfcheckAsset.fromJson(e as Map<String, dynamic>))
      .toList(),
);
