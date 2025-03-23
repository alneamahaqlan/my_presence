import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_presence/core/extensions/context_extensions.dart';

import '../../../../core/models/status.dart';
import '../../../../core/routes/app_pages.dart';
import '../bloc/faculty_bloc.dart';

class FacultiesPage extends StatelessWidget {
  const FacultiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('الكليات'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<FacultyBloc, FacultyState>(
        builder: (context, state) {
          if (state.status == Status.loading()) {
            return Center(
              child: CircularProgressIndicator(
                color: colorScheme.primary, // استخدام لون الموضوع الرئيسي
              ),
            );
          } else if (state.status == Status.success()) {
            final faculties = state.faculties;
            return ListView.builder(
              padding: const EdgeInsets.all(16.0), // إضافة padding حول القائمة
              itemCount: faculties.length,
              itemBuilder: (context, index) {
                final faculty = faculties[index];
                return Card(
                  elevation: 4, // إضافة ظل للبطاقة
                  margin: const EdgeInsets.only(
                    bottom: 16.0,
                  ), // إضافة margin بين البطاقات
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // زوايا مدورة
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ), // زوايا مدورة لـ InkWell
                    onTap: () {
                      // الانتقال إلى صفحة ملف الكلية
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.primary.withOpacity(0.1),
                            colorScheme.primary.withOpacity(0.05),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          16.0,
                        ), // إضافة padding داخل البطاقة
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // اسم الكلية
                            Text(
                              faculty.name,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color:
                                    colorScheme
                                        .onSurface, // استخدام لون onSurface من الموضوع
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ), // إضافة مسافة بين النص والأيقونة
                            // تفاصيل إضافية (مثل الوصف أو الإحصائيات)
                            Text(
                              '${faculty.departments?.length ?? 0} أقسام',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurface.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ), // إضافة مسافة بين النص والأيقونة
                            // أيقونة أو زر إجراء
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color:
                                        colorScheme
                                            .primary, // استخدام لون الموضوع الرئيسي
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state.status == Status.failed()) {
            return Center(
              child: Text(
                state.message!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.error, // استخدام لون الخطأ من الموضوع
                ),
              ),
            );
          }
          return Center(
            child: Text(
              'لا توجد بيانات متاحة',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withOpacity(
                  0.6,
                ), // استخدام لون onSurface مع opacity
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(AppRoutes.addFaculty);
        },
        backgroundColor: colorScheme.primary, // استخدام لون الموضوع الرئيسي
        child: Icon(
          Icons.add,
          color: colorScheme.onPrimary, // استخدام لون onPrimary من الموضوع
        ),
      ),
    );
  }
}
