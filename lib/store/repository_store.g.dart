// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RepositoryStore on _RepositoryStore, Store {
  Computed<StoreState> _$repositoryListStateComputed;

  @override
  StoreState get repositoryListState => (_$repositoryListStateComputed ??=
          Computed<StoreState>(() => super.repositoryListState))
      .value;

  final _$repoListAtom = Atom(name: '_RepositoryStore.repoList');

  @override
  List<RepositoryItem> get repoList {
    _$repoListAtom.context.enforceReadPolicy(_$repoListAtom);
    _$repoListAtom.reportObserved();
    return super.repoList;
  }

  @override
  set repoList(List<RepositoryItem> value) {
    _$repoListAtom.context.conditionallyRunInAction(() {
      super.repoList = value;
      _$repoListAtom.reportChanged();
    }, _$repoListAtom, name: '${_$repoListAtom.name}_set');
  }

  final _$_repositoryFutureAtom =
      Atom(name: '_RepositoryStore._repositoryFuture');

  @override
  ObservableFuture<Response<dynamic>> get _repositoryFuture {
    _$_repositoryFutureAtom.context.enforceReadPolicy(_$_repositoryFutureAtom);
    _$_repositoryFutureAtom.reportObserved();
    return super._repositoryFuture;
  }

  @override
  set _repositoryFuture(ObservableFuture<Response<dynamic>> value) {
    _$_repositoryFutureAtom.context.conditionallyRunInAction(() {
      super._repositoryFuture = value;
      _$_repositoryFutureAtom.reportChanged();
    }, _$_repositoryFutureAtom, name: '${_$_repositoryFutureAtom.name}_set');
  }

  final _$getRepositoryListAsyncAction = AsyncAction('getRepositoryList');

  @override
  Future<void> getRepositoryList() {
    return _$getRepositoryListAsyncAction.run(() => super.getRepositoryList());
  }
}
