import 'package:hotels_picker/domain/models/booking.dart';
import 'package:hotels_picker/domain/models/hotel.dart';
import 'package:hotels_picker/domain/models/room.dart';

abstract class ApiRepository {
  /// Requests info about hotel with id = 1
  Future<Hotel> getHotel();

  /// Requests avaliable rooms for selected hotel
  Future<List<Room>> getAvaliableRooms();

  /// Requests booking info
  Future<Booking> getBookingInfo();
}
