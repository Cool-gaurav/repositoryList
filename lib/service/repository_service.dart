import 'package:chopper/chopper.dart';
import 'package:flutter_app_list/utils/app_constants.dart';

// this is necessary for the generated code to find your class
part "repository_service.chopper.dart";

@ChopperApi(baseUrl: API_PATH)
abstract class RepositoryService extends ChopperService {

  // helper methods that help you instanciate your service
  static RepositoryService create([ChopperClient client]) =>
      _$RepositoryService(client);

  @Get(path: 'repositories')
  Future<Response> getRepositoryList(@Query('q') String query,
      @Query('sort') String stars,
      @Query('order') String desc,
      @Query('page') String start,
      @Query('per_page') String no);
}