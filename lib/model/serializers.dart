import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_app_list/model/repository_data.dart';
import 'package:flutter_app_list/model/repository_item.dart';
import 'package:flutter_app_list/model/repository_owner.dart';
import 'package:built_collection/built_collection.dart';
part 'serializers.g.dart';

@SerializersFor([RepositoryData,RepositoryItem,RepositoryOwner])
Serializers serializers = _$serializers;

Serializers standardSerializers =
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
