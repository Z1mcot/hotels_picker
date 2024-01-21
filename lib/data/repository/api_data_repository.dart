import 'package:hotels_picker/data/api_clients/api_client.dart';
import 'package:hotels_picker/domain/models/booking.dart';
import 'package:hotels_picker/domain/models/hotel.dart';
import 'package:hotels_picker/domain/models/room.dart';
import 'package:hotels_picker/domain/repository/api_repository.dart';

class ApiDataRepository implements ApiRepository {
  final ApiClient _api;

  ApiDataRepository(this._api);

  @override
  Future<List<Room>> getAvaliableRooms() => _api.getAvaliableRooms();

  @override
  Future<Booking> getBookingInfo() => _api.getBookingInfo();

  @override
  Future<Hotel> getHotel() => _api.getHotel();
}
