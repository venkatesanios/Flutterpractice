import 'package:dio/dio.dart';
import 'package:flutter_practice_sample/core/model/loginModel.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
part 'api_service.g.dart';

@RestApi(
    // parser: Parser.FlutterCompute,
    )
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService init() {
    final dio = Dio();
    dio.options.baseUrl = 'http://3.1.62.165:8080/api/v1';
    dio.interceptors.addAll([PrettyDioLogger(requestBody: true)]);

    return ApiService(dio);
  }

  // @POST('/login')
  // Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @GET('/controller/user/{userId}/cluster')
  Future<GroupUserResponse> getUserGroups(@Path('userId') String userId);
}
