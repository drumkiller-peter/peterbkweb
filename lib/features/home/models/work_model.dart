import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_model.freezed.dart';
part 'work_model.g.dart';

@freezed
class WorkModel with _$WorkModel {
  const factory WorkModel({
    required String projectName,
    required String imageUrl,
    required String description,
    String? position,
    String? videoUrl,
  }) = _WorkModel;

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
}
