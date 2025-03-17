import 'package:flutter/material.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/routes/app_pages.dart';
import '../widgets/member_list_widget.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
