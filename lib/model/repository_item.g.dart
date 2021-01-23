// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryItem> _$repositoryItemSerializer =
    new _$RepositoryItemSerializer();

class _$RepositoryItemSerializer
    implements StructuredSerializer<RepositoryItem> {
  @override
  final Iterable<Type> types = const [RepositoryItem, _$RepositoryItem];
  @override
  final String wireName = 'RepositoryItem';

  @override
  Iterable<Object> serialize(Serializers serializers, RepositoryItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.repositoryName != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.repositoryName,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryFullName != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(object.repositoryFullName,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryWatchers != null) {
      result
        ..add('watchers')
        ..add(serializers.serialize(object.repositoryWatchers,
            specifiedType: const FullType(int)));
    }
    if (object.repositoryDescription != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.repositoryDescription,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryLanguage != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.repositoryLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryOwner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.repositoryOwner,
            specifiedType: const FullType(RepositoryOwner)));
    }
    return result;
  }

  @override
  RepositoryItem deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.repositoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.repositoryFullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'watchers':
          result.repositoryWatchers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.repositoryDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.repositoryLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.repositoryOwner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RepositoryOwner))
              as RepositoryOwner);
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryItem extends RepositoryItem {
  @override
  final int id;
  @override
  final String repositoryName;
  @override
  final String repositoryFullName;
  @override
  final String repositoryUrl;
  @override
  final int repositoryWatchers;
  @override
  final String repositoryDescription;
  @override
  final String repositoryLanguage;
  @override
  final RepositoryOwner repositoryOwner;

  factory _$RepositoryItem([void Function(RepositoryItemBuilder) updates]) =>
      (new RepositoryItemBuilder()..update(updates)).build();

  _$RepositoryItem._(
      {this.id,
      this.repositoryName,
      this.repositoryFullName,
      this.repositoryUrl,
      this.repositoryWatchers,
      this.repositoryDescription,
      this.repositoryLanguage,
      this.repositoryOwner})
      : super._();

  @override
  RepositoryItem rebuild(void Function(RepositoryItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryItemBuilder toBuilder() =>
      new RepositoryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryItem &&
        id == other.id &&
        repositoryName == other.repositoryName &&
        repositoryFullName == other.repositoryFullName &&
        repositoryUrl == other.repositoryUrl &&
        repositoryWatchers == other.repositoryWatchers &&
        repositoryDescription == other.repositoryDescription &&
        repositoryLanguage == other.repositoryLanguage &&
        repositoryOwner == other.repositoryOwner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), repositoryName.hashCode),
                            repositoryFullName.hashCode),
                        repositoryUrl.hashCode),
                    repositoryWatchers.hashCode),
                repositoryDescription.hashCode),
            repositoryLanguage.hashCode),
        repositoryOwner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryItem')
          ..add('id', id)
          ..add('repositoryName', repositoryName)
          ..add('repositoryFullName', repositoryFullName)
          ..add('repositoryUrl', repositoryUrl)
          ..add('repositoryWatchers', repositoryWatchers)
          ..add('repositoryDescription', repositoryDescription)
          ..add('repositoryLanguage', repositoryLanguage)
          ..add('repositoryOwner', repositoryOwner))
        .toString();
  }
}

class RepositoryItemBuilder
    implements Builder<RepositoryItem, RepositoryItemBuilder> {
  _$RepositoryItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _repositoryName;
  String get repositoryName => _$this._repositoryName;
  set repositoryName(String repositoryName) =>
      _$this._repositoryName = repositoryName;

  String _repositoryFullName;
  String get repositoryFullName => _$this._repositoryFullName;
  set repositoryFullName(String repositoryFullName) =>
      _$this._repositoryFullName = repositoryFullName;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  int _repositoryWatchers;
  int get repositoryWatchers => _$this._repositoryWatchers;
  set repositoryWatchers(int repositoryWatchers) =>
      _$this._repositoryWatchers = repositoryWatchers;

  String _repositoryDescription;
  String get repositoryDescription => _$this._repositoryDescription;
  set repositoryDescription(String repositoryDescription) =>
      _$this._repositoryDescription = repositoryDescription;

  String _repositoryLanguage;
  String get repositoryLanguage => _$this._repositoryLanguage;
  set repositoryLanguage(String repositoryLanguage) =>
      _$this._repositoryLanguage = repositoryLanguage;

  RepositoryOwnerBuilder _repositoryOwner;
  RepositoryOwnerBuilder get repositoryOwner =>
      _$this._repositoryOwner ??= new RepositoryOwnerBuilder();
  set repositoryOwner(RepositoryOwnerBuilder repositoryOwner) =>
      _$this._repositoryOwner = repositoryOwner;

  RepositoryItemBuilder();

  RepositoryItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _repositoryName = _$v.repositoryName;
      _repositoryFullName = _$v.repositoryFullName;
      _repositoryUrl = _$v.repositoryUrl;
      _repositoryWatchers = _$v.repositoryWatchers;
      _repositoryDescription = _$v.repositoryDescription;
      _repositoryLanguage = _$v.repositoryLanguage;
      _repositoryOwner = _$v.repositoryOwner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryItem;
  }

  @override
  void update(void Function(RepositoryItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryItem build() {
    _$RepositoryItem _$result;
    try {
      _$result = _$v ??
          new _$RepositoryItem._(
              id: id,
              repositoryName: repositoryName,
              repositoryFullName: repositoryFullName,
              repositoryUrl: repositoryUrl,
              repositoryWatchers: repositoryWatchers,
              repositoryDescription: repositoryDescription,
              repositoryLanguage: repositoryLanguage,
              repositoryOwner: _repositoryOwner?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositoryOwner';
        _repositoryOwner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RepositoryItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
