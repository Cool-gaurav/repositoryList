// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepositoryData> _$repositoryDataSerializer =
    new _$RepositoryDataSerializer();

class _$RepositoryDataSerializer
    implements StructuredSerializer<RepositoryData> {
  @override
  final Iterable<Type> types = const [RepositoryData, _$RepositoryData];
  @override
  final String wireName = 'RepositoryData';

  @override
  Iterable<Object> serialize(Serializers serializers, RepositoryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.incompleteResult != null) {
      result
        ..add('incomplete_results')
        ..add(serializers.serialize(object.incompleteResult,
            specifiedType: const FullType(bool)));
    }
    if (object.repositoryList != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.repositoryList,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RepositoryItem)])));
    }
    return result;
  }

  @override
  RepositoryData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'incomplete_results':
          result.incompleteResult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'items':
          result.repositoryList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RepositoryItem)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryData extends RepositoryData {
  @override
  final int totalCount;
  @override
  final bool incompleteResult;
  @override
  final BuiltList<RepositoryItem> repositoryList;

  factory _$RepositoryData([void Function(RepositoryDataBuilder) updates]) =>
      (new RepositoryDataBuilder()..update(updates)).build();

  _$RepositoryData._(
      {this.totalCount, this.incompleteResult, this.repositoryList})
      : super._();

  @override
  RepositoryData rebuild(void Function(RepositoryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryDataBuilder toBuilder() =>
      new RepositoryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryData &&
        totalCount == other.totalCount &&
        incompleteResult == other.incompleteResult &&
        repositoryList == other.repositoryList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, totalCount.hashCode), incompleteResult.hashCode),
        repositoryList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryData')
          ..add('totalCount', totalCount)
          ..add('incompleteResult', incompleteResult)
          ..add('repositoryList', repositoryList))
        .toString();
  }
}

class RepositoryDataBuilder
    implements Builder<RepositoryData, RepositoryDataBuilder> {
  _$RepositoryData _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  bool _incompleteResult;
  bool get incompleteResult => _$this._incompleteResult;
  set incompleteResult(bool incompleteResult) =>
      _$this._incompleteResult = incompleteResult;

  ListBuilder<RepositoryItem> _repositoryList;
  ListBuilder<RepositoryItem> get repositoryList =>
      _$this._repositoryList ??= new ListBuilder<RepositoryItem>();
  set repositoryList(ListBuilder<RepositoryItem> repositoryList) =>
      _$this._repositoryList = repositoryList;

  RepositoryDataBuilder();

  RepositoryDataBuilder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _incompleteResult = _$v.incompleteResult;
      _repositoryList = _$v.repositoryList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryData;
  }

  @override
  void update(void Function(RepositoryDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryData build() {
    _$RepositoryData _$result;
    try {
      _$result = _$v ??
          new _$RepositoryData._(
              totalCount: totalCount,
              incompleteResult: incompleteResult,
              repositoryList: _repositoryList?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositoryList';
        _repositoryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RepositoryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
