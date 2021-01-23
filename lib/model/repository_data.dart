import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_app_list/model/repository_item.dart';

part 'repository_data.g.dart';

abstract class RepositoryData implements Built<RepositoryData, RepositoryDataBuilder> {
  static Serializer<RepositoryData> get serializer => _$repositoryDataSerializer;

  RepositoryData._();

  //factory RepositoryData([void Function(RepositoryDataBuilder) updates]) = _$RepositoryData;
  factory RepositoryData([updates(RepositoryDataBuilder b)]) = _$RepositoryData;

  @nullable
  @BuiltValueField(wireName: 'total_count')
  int get totalCount;

  @nullable
  @BuiltValueField(wireName: 'incomplete_results')
  bool get incompleteResult;

  @nullable
  @BuiltValueField(wireName: 'items')
  BuiltList<RepositoryItem> get repositoryList;
}
