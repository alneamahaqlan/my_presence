import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/core/routes/app_pages.dart';

import '../../../../core/models/status.dart';
import '../../../../core/utils/ui.dart';
import '../bloc/member_bloc.dart';
import 'member_card.dart';

class MemberListWidget extends StatelessWidget {
  const MemberListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberBloc, MemberState>(
      builder: (context, state) {
        if (state.status == Status.loading()) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == Status.failed()) {
          return Center(
            child: Text('فشل في تحميل الأعضاء: ${state.errorMessage}'),
          );
        } else if (state.members.isEmpty) {
          return const Center(child: Text('لا يوجد أعضاء.'));
        } else {
          return ListView.builder(
            itemCount: state.members.length,
            itemBuilder: (context, index) {
              final member = state.members[index];

              return Dismissible(
                key: Key(member.id!), // Unique key for each item
                direction:
                    member.isActive
                        ? DismissDirection.endToStart
                        : DismissDirection.startToEnd,
                background: Container(
                  color: member.isActive ? Colors.red : Colors.green,
                  alignment:
                      member.isActive
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    right: member.isActive ? 20 : 0,
                    left: member.isActive ? 0 : 20,
                  ),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                confirmDismiss: (direction) async {
                  return await Ui.showCustomDialog(
                    context: context,
                    title:
                        member.isActive
                            ? 'تعطيل العضو'.tr()
                            : 'تفعيل العضو'.tr(),
                    message:
                        member.isActive
                            ? 'هل أنت متأكد أنك تريد تعطيل هذا العضو؟'.tr()
                            : 'هل أنت متأكد أنك تريد تفعيل هذا العضو؟'.tr(),
                    confirmText: member.isActive ? 'تعطيل'.tr() : 'تفعيل'.tr(),
                    cancelText: 'إلغاء'.tr(),
                    confirmButtonColor:
                        member.isActive ? Colors.red : Colors.green,
                  );
                },
                onDismissed: (direction) {
                  context.read<MemberBloc>().add(
                    MemberEvent.deleteMember(
                      userId: member.id,
                      isActive: !member.isActive,
                    ),
                  );
                },
                child: InkWell(
                  onTap: () {
                    context.pushNamed(AppRoutes.viewMember, extra: member);
                  },
                  child: MemberCard(
                    name: member.name,
                    email: member.email,
                    role: member.role.name,
                    activityStatus: member.activityStatus.name,
                    onEdit: () {
                      context.pushNamed(AppRoutes.editMember, extra: member);
                    },
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
