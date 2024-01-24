import 'package:hotels_picker/domain/models/bill.dart';
import 'package:hotels_picker/domain/models/booking.dart';
import 'package:hotels_picker/domain/models/buyer.dart';
import 'package:hotels_picker/domain/models/tourist.dart';

class OrderState {
  final bool isLoading;
  final bool shouldValidateForms;
  final Set<String> invalidFields;
  final Booking? bookingInfo;
  final Buyer buyer;
  final int includedTouristsCount;
  final List<Tourist> tourists;
  final Bill? bill;
  final Set<int> expandedTiles;

  OrderState({
    this.isLoading = false,
    this.shouldValidateForms = false,
    this.invalidFields = const {},
    this.bookingInfo,
    this.buyer = const Buyer(phoneNumber: '', email: ''),
    this.tourists = const [Tourist()],
    this.bill,
    this.includedTouristsCount = 1,
    this.expandedTiles = const {0},
  });

  OrderState copyWith({
    bool? isLoading,
    bool? shouldValidateForms,
    Set<String>? invalidFields,
    Booking? bookingInfo,
    Buyer? buyer,
    int? includedTouristsCount,
    List<Tourist>? tourists,
    Bill? bill,
    Set<int>? expandedTiles,
  }) {
    return OrderState(
      isLoading: isLoading ?? this.isLoading,
      shouldValidateForms: shouldValidateForms ?? this.shouldValidateForms,
      invalidFields: invalidFields ?? this.invalidFields,
      bookingInfo: bookingInfo ?? this.bookingInfo,
      buyer: buyer ?? this.buyer,
      includedTouristsCount:
          includedTouristsCount ?? this.includedTouristsCount,
      tourists: tourists ?? this.tourists,
      bill: bill ?? this.bill,
      expandedTiles: expandedTiles ?? this.expandedTiles,
    );
  }
}
