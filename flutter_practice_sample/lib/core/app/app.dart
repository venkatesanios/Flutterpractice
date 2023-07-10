import 'package:flutter_practice_sample/ui/views/login/login_view.dart';
import 'package:flutter_practice_sample/ui/views/group_unit/group_unit_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(page: GroupUnitView, initial: true),
  MaterialRoute(page: LoginView),
])
class App {}
