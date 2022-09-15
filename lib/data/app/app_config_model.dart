import 'package:base_component/imports/base_component_import.dart';

part 'app_config_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable(ignoreUnannotated: false)
class AppConfigModel {
  @JsonKey(name: 'openCount')
  @HiveField(0)
  int openCount;

  factory AppConfigModel.fromJson(Map<String, dynamic> json) =>
      _$AppConfigModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppConfigModelToJson(this);

//<editor-fold desc="Data Methods">

  AppConfigModel({
    this.openCount = 0,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppConfigModel &&
          runtimeType == other.runtimeType &&
          openCount == other.openCount);

  @override
  int get hashCode => openCount.hashCode;

  @override
  String toString() {
    return 'AppConfigModel{' + ' openCount: $openCount,' + '}';
  }

  AppConfigModel copyWith({
    int? openCount,
  }) {
    return AppConfigModel(
      openCount: openCount ?? this.openCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'openCount': this.openCount,
    };
  }

  factory AppConfigModel.fromMap(Map<String, dynamic> map) {
    return AppConfigModel(
      openCount: map['openCount'] as int,
    );
  }

//</editor-fold>
}