import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/routes/app_pages.dart';
import '../bloc/member_bloc.dart';
import '../widgets/member_list_widget.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // context.read<MemberBloc>().add(const MemberEvent.loadMembers());
    return Scaffold(
      body: MemberListWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed(AppRoutes.addMember),
        // Ui.showDialogWidget(context, const AddMemberScreen()),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
