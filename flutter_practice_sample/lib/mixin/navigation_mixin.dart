import 'package:flutter_practice_sample/service/locator.dart';
import 'package:stacked_services/stacked_services.dart';

mixin NavigationMixin {
  final NavigationService _navigationService = locator<NavigationService>();
}
