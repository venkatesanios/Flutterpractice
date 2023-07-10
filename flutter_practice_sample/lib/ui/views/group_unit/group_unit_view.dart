import 'package:flutter/material.dart';
import 'package:flutter_practice_sample/ui/views/group_unit/group_unit_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GroupUnitView extends StackedView<GroupUnitViewModel> {
  const GroupUnitView({super.key});

  @override
  Widget builder(BuildContext context, GroupUnitViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Groups')),
      body: SafeArea(
        child: Center(
          child: !viewModel.isBusy 
              ? ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemBuilder: (context, index) => Text(viewModel.userGroupList[index].groupName ?? 'N/A'),
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    child: Divider(
                      height: 1,
                      color: Color.fromARGB(255, 128, 125, 125),
                    ),
                  ),
                  itemCount: viewModel.userGroupList.length,
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  GroupUnitViewModel viewModelBuilder(BuildContext context) => GroupUnitViewModel('153');
}
