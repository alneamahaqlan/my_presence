import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/utils/enums/notification_type.dart';
import 'package:my_presence/core/widgets/drop_down_widget.dart';
import 'package:my_presence/core/widgets/text_widget.dart';
import 'package:my_presence/features/auth/data/models/user_model.dart';
import 'package:my_presence/features/members/presentation/bloc/member_bloc.dart';
import 'package:my_presence/features/notifications/data/models/notification_model.dart';

import '../../../../core/services/notification_service.dart';
import '../../../../core/utils/enums/role.dart';
import '../../../../dependency_injection.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  NotificationsPageState createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _currentUserId;
  UserModel? _selectedUser;

  @override
  void initState() {
    super.initState();
    _getCurrentUser();
  }

  void _getCurrentUser() {
    final User? user = _auth.currentUser;
    if (user != null) {
      setState(() {
        _currentUserId = user.uid;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإشعارات')),
      body: SafeArea(
        child:
            _currentUserId == null
                ? const Center(child: Text('يجب تسجيل الدخول لعرض الإشعارات'))
                : StreamBuilder<QuerySnapshot>(
                  stream:
                      FirebaseFirestore.instance
                          .collection('users')
                          .doc(_currentUserId)
                          .collection('notifications')
                          .orderBy('date', descending: true)
                          .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('حدث خطأ: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return const Center(child: Text('لا توجد إشعارات'));
                    }

                    final notifications = snapshot.data!.docs;

                    return ListView.separated(
                      padding: const EdgeInsets.all(16.0),
                      itemCount: notifications.length,
                      separatorBuilder:
                          (context, index) => const SizedBox(height: 8.0),
                      itemBuilder: (context, index) {
                        final notification =
                            notifications[index].data() as Map<String, dynamic>;
                        final notificationModel = NotificationModel.fromJson(
                          notification,
                        );
                        return _buildNotificationCard(
                          context: context,
                          notification: notificationModel,
                        );
                      },
                    );
                  },
                ),
      ),
      floatingActionButton:
          _currentUserId == null
              ? null
              : FloatingActionButton(
                onPressed: () => _showAddNotificationDialog(context),
                child: const Icon(Icons.add),
              ),
    );
  }

  Widget _buildNotificationCard({
    required BuildContext context,
    required NotificationModel notification,
  }) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              _getIconForType(notification.type),
              size: 32.0,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: notification.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  TextWidget(
                    text: notification.message,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 4.0),
                  TextWidget(
                    text: _getTypeLabel(notification.type),
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 4.0),
                  TextWidget(
                    text: _formatTimestamp(notification.date),
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTimestamp(Timestamp timestamp) {
    final dateTime = timestamp.toDate();
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}';
  }

  IconData _getIconForType(String type) {
    switch (notificationTypeFromJson(type)) {
      case NotificationType.academic:
        return Icons.school;
      case NotificationType.administrative:
        return Icons.assignment;
      case NotificationType.research:
        return Icons.article;
      default:
        return Icons.notifications;
    }
  }

  String _getTypeLabel(String type) {
    switch (notificationTypeFromJson(type)) {
      case NotificationType.academic:
        return 'أكاديمي';
      case NotificationType.administrative:
        return 'إداري';
      case NotificationType.research:
        return 'بحثي';
      default:
        return 'غير محدد';
    }
  }

  void _showAddNotificationDialog(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController messageController = TextEditingController();
    NotificationType selectedType = NotificationType.administrative;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('إضافة إشعار جديد'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'عنوان الإشعار',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    labelText: 'نص الإشعار',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<NotificationType>(
                  value: selectedType,
                  onChanged: (value) {
                    if (value != null) {
                      selectedType = value;
                    }
                  },
                  items:
                      NotificationType.values.map((type) {
                        return DropdownMenuItem<NotificationType>(
                          value: type,
                          child: Text(
                            _getTypeLabel(notificationTypeToJson(type)),
                          ),
                        );
                      }).toList(),
                  decoration: const InputDecoration(
                    labelText: 'نوع الإشعار',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                BlocBuilder<MemberBloc, MemberState>(
                  builder: (context, state) {
                    return DropDownWidget<UserModel>(
                      hint: 'اختر مستخدم',
                      items:
                          state.members
                              .where((user) => user.role == Role.teacher)
                              .toList(),
                      selectedValue: _selectedUser,
                      onChanged: (UserModel? value) {
                        setState(() {
                          _selectedUser = value;
                        });
                      },
                      displayText: (UserModel user) => user.name,
                      validator: (value) {
                        if (value == null) {
                          return 'يرجى اختيار مستخدم';
                        }
                        return null;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('إلغاء'),
            ),
            ElevatedButton(
              onPressed: () async {
                final String title = titleController.text.trim();
                final String message = messageController.text.trim();

                if (title.isNotEmpty &&
                    message.isNotEmpty &&
                    _selectedUser != null) {
                  final notification = NotificationModel(
                    title: title,
                    message: message,
                    date: Timestamp.now(),
                    type: notificationTypeToJson(selectedType),
                    createdAt: Timestamp.now(),
                    updatedAt: Timestamp.now(),
                  );

                  // Save the notification to Firestore
                  await FirebaseFirestore.instance
                      .collection('users')
                      .doc(_selectedUser!.id)
                      .collection('notifications')
                      .add(notification.toJson());

                  final notificationService = getIt<NotificationService>();
                  await notificationService.sendNotification(
                    token: _selectedUser!.fcmToken ?? '',
                    title: title,
                    body: message,
                  );

                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'يرجى إدخال عنوان ونص الإشعار واختيار مستخدم',
                      ),
                    ),
                  );
                }
              },
              child: const Text('إضافة'),
            ),
          ],
        );
      },
    );
  }
}
