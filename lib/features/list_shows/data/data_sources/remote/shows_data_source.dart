import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constant/constants.dart';
import 'package:flutter_clean_architecture/core/network/dio_provider.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/model/show_search_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_clean_architecture/features/list_shows/data/model/show_model.dart';
import 'package:retrofit/http.dart';

part 'shows_data_source.g.dart';

@RestApi()
abstract class ShowsDataSource {
  factory ShowsDataSource(Dio dio, {String baseUrl}) = _ShowsDataSource;

  @GET('/search/shows')
  Future<List<ShowSearchModel>> getShows({
    @Query('q') required String query,
  });

  @GET('/shows/{id}')
  Future<ShowModel> getShowById({
    @Path() required int id,
  });
}

@riverpod
ShowsDataSource showsDataSource(ShowsDataSourceRef ref) {
  final dio = ref.watch(dioProvider);
  return ShowsDataSource(dio, baseUrl: showsAPIBaseUrl);
}
