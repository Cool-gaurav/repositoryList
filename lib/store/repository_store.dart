import 'package:chopper/chopper.dart';
import 'package:flutter_app_list/model/repository_item.dart';
import 'package:flutter_app_list/model/repository_data.dart';
import 'package:flutter_app_list/model/serializers.dart';
import 'package:flutter_app_list/service/repository_service.dart';
import 'package:mobx/mobx.dart';
import 'package:date_format/date_format.dart';

part 'repository_store.g.dart';

class RepositoryStore extends _RepositoryStore with _$RepositoryStore {
  RepositoryStore(RepositoryService repositoryService) : super(repositoryService);
}
enum StoreState { initial, loading, loaded }
abstract class _RepositoryStore with Store {
  final RepositoryService _repositoryService;

  _RepositoryStore(this._repositoryService);

  @observable
  List<RepositoryItem> repoList;
  @observable
  ObservableFuture<Response> _repositoryFuture;

  @computed
  StoreState get repositoryListState {
    if (_repositoryFuture == null ||
        _repositoryFuture.status == FutureStatus.rejected) {
      return StoreState.initial;
    }
    return _repositoryFuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future<void> getRepositoryList() async {
    final lastWeek = DateTime.now().subtract(Duration(days: 7));
    final formattedDate = formatDate(lastWeek, [yyyy, '-', mm, '-', dd]);
    _repositoryFuture = ObservableFuture(_repositoryService.getRepositoryList(
        'created:>$formattedDate',
        'stars',
        'desc',
        '0',
        '25'));
    var response = await _repositoryFuture;
    final list = standardSerializers.deserializeWith(
        RepositoryData.serializer, response.body);
    repoList=list.repositoryList.toList();
  }
}