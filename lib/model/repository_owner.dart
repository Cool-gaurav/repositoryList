import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'repository_owner.g.dart';

abstract class RepositoryOwner implements Built<RepositoryOwner, RepositoryOwnerBuilder> {
  static Serializer<RepositoryOwner> get serializer => _$repositoryOwnerSerializer;

  RepositoryOwner._();

  //factory RepositoryItem([void Function(RepositoryItemBuilder) updates]) = _$RepositoryItem;
  factory RepositoryOwner([updates(RepositoryOwnerBuilder b)]) = _$RepositoryOwner;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'login')
  String get login;

  @nullable
  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;

  @nullable
  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;

}
