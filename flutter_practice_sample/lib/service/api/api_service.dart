import 'package:dio/dio.dart';
import 'package:flutter_practice_sample/core/model/GroupModel.dart';
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

// %@/api/v1/signin
// {"mobileCountryCode":"91","mobileNumber":"7373075677","password":"e10adc3949ba59abbe56e057f20f883e","language":"1","deviceToken":"coZSnIt4BQo:APA91bE-XaEZiVjLm5UqDhwowDHNyUdALRkHuycCsMRwrpcAJdZNNvFakKW5fiypZBPsMsr3demQIf5ww93YEa-8ZUlSgPKVYZdUTR4PLBWnpfzd1Y4juEavL3kqaL4jA4GDYctKjhM7","macAddress":"6df5bea1567ba03b"}
  // @POST('/signin')
  // Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @GET('/controller/user/{userId}/cluster')
  Future<GroupUserResponse> getUserGroups(@Path('userId') String userId);
}
