import 'package:flutter_practice_sample/core/model/loginModel.dart';
import 'package:flutter_practice_sample/service/api/api_service.dart';
import 'package:flutter_practice_sample/service/locator.dart';
import 'package:stacked/stacked.dart';

class GroupUnitViewModel extends BaseViewModel {
  GroupUnitViewModel(this._userId) {
    getUserGroups();
  }

  final String _userId;

  final _apiService = locator<ApiService>();
  GroupUserResponse? _groupUserResponse;

  List<GroupData> get userGroupList => _groupUserResponse?.data ?? [];

  Future<void> getUserGroups() async {
    _groupUserResponse = await runBusyFuture(_apiService.getUserGroups(_userId));
  }
}
