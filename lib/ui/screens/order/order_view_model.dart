import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels_picker/domain/enums/routes_names_enum.dart';
import 'package:hotels_picker/domain/models/tourist.dart';
import 'package:hotels_picker/internal/dependencies/repository_module.dart';
import 'package:hotels_picker/ui/screens/order/order_state.dart';

class OrderViewModel with ChangeNotifier {
  BuildContext context;

  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  OrderViewModel({
    required this.context,
  }) {
    _asyncInit();
    phoneController.addListener(onPhoneChanged);

    emailController.addListener(onEmailChanged);
  }

  void onPhoneChanged() {
    _state = _state.copyWith(
      buyer: _state.buyer.copyWith(
        phoneNumber: phoneController.text,
      ),
    );
  }

  void onEmailChanged() {
    _state = _state.copyWith(
      buyer: _state.buyer.copyWith(email: emailController.text),
    );
  }

  void onCreateTourist() {
    var newTourist = const Tourist();
    var tourists = List<Tourist>.from(_state.tourists);
    tourists.add(newTourist);
    onExpansionChanged(tourists.length - 1);
    state = state.copyWith(
      tourists: tourists,
      includedTouristsCount: tourists.length,
    );
  }

  void onExpansionChanged(int index) {
    var expanded = Set<int>.from(_state.expandedTiles);
    expanded.contains(index) ? expanded.remove(index) : expanded.add(index);
    _state = _state.copyWith(expandedTiles: expanded);
  }

  void _updateTourist(int index, Tourist tourist) {
    var tourists = List<Tourist>.from(_state.tourists);
    tourists[index] = tourist;
    _state = _state.copyWith(tourists: tourists);
  }

  void onTouristNameChanged(int touristIndex, String val) {
    var tourist = _state.tourists[touristIndex].copyWith(firstName: val);
    _updateTourist(touristIndex, tourist);
  }

  void onTouristSurnameChanged(int touristIndex, String val) {
    var tourist = _state.tourists[touristIndex].copyWith(surname: val);
    _updateTourist(touristIndex, tourist);
  }

  void onTouristBirtdateChanged(int touristIndex, DateTime val) {
    var tourist = _state.tourists[touristIndex].copyWith(
      birthdate: val,
    );
    _updateTourist(touristIndex, tourist);
  }

  void onTouristCitizenshipChanged(int touristIndex, String val) {
    var tourist = _state.tourists[touristIndex].copyWith(citizenship: val);
    _updateTourist(touristIndex, tourist);
  }

  void onTouristPassportChanged(int touristIndex, String val) {
    var tourist = _state.tourists[touristIndex].copyWith(passportNumber: val);
    _updateTourist(touristIndex, tourist);
  }

  void onTouristPassportExpirationChanged(int touristIndex, DateTime val) {
    var tourist =
        _state.tourists[touristIndex].copyWith(passportExpiryDate: val);
    _updateTourist(touristIndex, tourist);
  }

  @override
  void dispose() {
    phoneController.removeListener(onPhoneChanged);
    emailController.removeListener(onEmailChanged);
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }

  final _apiRepository = RepositoryModule.apiRepository();

  OrderState _state = OrderState();
  OrderState get state => _state;
  set state(OrderState val) {
    _state = val;
    notifyListeners();
  }

  Future<void> _asyncInit() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    final booking = await _apiRepository.getBookingInfo();

    state = state.copyWith(
      isLoading: false,
      bookingInfo: booking,
    );
  }

  void toPlacedOrder() {
    context
        .pushNamed<bool>(
      RoutesNamesEnum.orderPlacedScreen.name,
    )
        .then((goToRoot) {
      if (goToRoot ?? false) {
        context.pop(true);
      }
    });
  }

  List<String> get infoRowsKeys => [
        'departure',
        'arrival_country',
        'tour_date_start',
        'number_of_nights',
        'hotel_name',
        'room',
        'nutrition',
      ];

  Map<String, String> get infoRowsNames => {
        'departure': 'Вылет из',
        'arrival_country': 'Страна, город',
        'tour_date_start': 'Даты',
        'number_of_nights': 'Кол-во ночей',
        'hotel_name': 'Отель',
        'room': 'Номер',
        'nutrition': 'Питание',
      };
}
