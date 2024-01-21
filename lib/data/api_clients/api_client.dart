import 'package:dio/dio.dart';
import 'package:hotels_picker/domain/models/booking.dart';
import 'package:hotels_picker/domain/models/hotel.dart';
import 'package:hotels_picker/domain/models/room.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  /// Requests info about hotel with id = 1
  @GET('/v3/75000507-da9a-43f8-a618-df698ea7176d')
  Future<Hotel> getHotel();

  /// Requests avaliable rooms for selected hotel
  @GET('/v3/157ea342-a8a3-4e00-a8e6-a87d170aa0a2')
  Future<List<Room>> getAvaliableRooms();

  /// Requests booking info
  @GET('/v3/63866c74-d593-432c-af8e-f279d1a8d2ff')
  Future<Booking> getBookingInfo();
}
