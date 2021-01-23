import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_app_list/model/repository_owner.dart';
import 'package:built_collection/built_collection.dart';
part 'repository_item.g.dart';

abstract class RepositoryItem implements Built<RepositoryItem, RepositoryItemBuilder> {
  static Serializer<RepositoryItem> get serializer => _$repositoryItemSerializer;

  RepositoryItem._();

  //factory RepositoryItem([void Function(RepositoryItemBuilder) updates]) = _$RepositoryItem;
  factory RepositoryItem([updates(RepositoryItemBuilder b)]) = _$RepositoryItem;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get repositoryName;

  @nullable
  @BuiltValueField(wireName: 'full_name')
  String get repositoryFullName;

  @nullable
  @BuiltValueField(wireName: 'html_url')
  String get repositoryUrl;

  @nullable
  @BuiltValueField(wireName: 'watchers')
  int get repositoryWatchers;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get repositoryDescription;

  @nullable
  @BuiltValueField(wireName: 'language')
  String get repositoryLanguage;


  @nullable
  @BuiltValueField(wireName: 'owner')
  RepositoryOwner get repositoryOwner;

}
