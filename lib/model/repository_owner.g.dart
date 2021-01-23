

part of 'repository_owner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryOwner> _$repositoryOwnerSerializer =
    new _$RepositoryOwnerSerializer();

class _$RepositoryOwnerSerializer
    implements StructuredSerializer<RepositoryOwner> {
  @override
  final Iterable<Type> types = const [RepositoryOwner, _$RepositoryOwner];
  @override
  final String wireName = 'RepositoryOwner';

  @override
  Iterable<Object> serialize(Serializers serializers, RepositoryOwner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RepositoryOwner deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryOwnerBuilder();

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
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryOwner extends RepositoryOwner {
  @override
  final int id;
  @override
  final String login;
  @override
  final String htmlUrl;
  @override
  final String avatarUrl;

  factory _$RepositoryOwner([void Function(RepositoryOwnerBuilder) updates]) =>
      (new RepositoryOwnerBuilder()..update(updates)).build();

  _$RepositoryOwner._({this.id, this.login, this.htmlUrl, this.avatarUrl})
      : super._();

  @override
  RepositoryOwner rebuild(void Function(RepositoryOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryOwnerBuilder toBuilder() =>
      new RepositoryOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryOwner &&
        id == other.id &&
        login == other.login &&
        htmlUrl == other.htmlUrl &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), login.hashCode), htmlUrl.hashCode),
        avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryOwner')
          ..add('id', id)
          ..add('login', login)
          ..add('htmlUrl', htmlUrl)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class RepositoryOwnerBuilder
    implements Builder<RepositoryOwner, RepositoryOwnerBuilder> {
  _$RepositoryOwner _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  RepositoryOwnerBuilder();

  RepositoryOwnerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _login = _$v.login;
      _htmlUrl = _$v.htmlUrl;
      _avatarUrl = _$v.avatarUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryOwner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryOwner;
  }

  @override
  void update(void Function(RepositoryOwnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryOwner build() {
    final _$result = _$v ??
        new _$RepositoryOwner._(
            id: id, login: login, htmlUrl: htmlUrl, avatarUrl: avatarUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
