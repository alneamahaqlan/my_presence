import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/app_bar_widget.dart';
import '../../../core/widgets/drop_down_widget.dart';
import '../../../core/widgets/text_field_widget.dart';
import '../../../core/widgets/text_widget.dart';
import 'bloc/goal_bloc.dart';

class AddGoalScreen extends StatelessWidget {
  const AddGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoalBloc(),
      child: Scaffold(
        appBar: AppBarWidget(title: "add_goal"),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/money_pile.png",
                        width: 80,
                        height: 70,
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFieldWidget(
                      hint: "name",
                      onChanged: (value) => context.read<GoalBloc>().add(GoalEvent.nameChanged(value)),
                    ),
                    SizedBox(height: 16),
                    TextFieldWidget(
                      hint: "note",
                      maxLines: 3,
                      onChanged: (value) => context.read<GoalBloc>().add(GoalEvent.noteChanged(value)),
                    ),
                    SizedBox(height: 16),
                    DropDownWidget(
                      hint: "category",
                      items: ["Savings", "Investment", "Health", "Education"],
                      onChanged: (value) => context.read<GoalBloc>().add(GoalEvent.categoryChanged(value!)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            hint: "current_amount",
                            keyboardType: TextInputType.number,
                            onChanged: (value) => context.read<GoalBloc>().add(
                              GoalEvent.currentAmountChanged(double.tryParse(value) ?? 0.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DropDownWidget(
                            hint: "currency",
                            items: ["USD", "EUR", "GBP"],
                            onChanged: (value) => context.read<GoalBloc>().add(GoalEvent.currencyChanged(value!)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            hint: "target_amount",
                            keyboardType: TextInputType.number,
                            onChanged: (value) => context.read<GoalBloc>().add(
                              GoalEvent.targetAmountChanged(double.tryParse(value) ?? 0.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DropDownWidget(
                            hint: "currency",
                            items: ["USD", "EUR", "GBP"],
                            onChanged: (value) => context.read<GoalBloc>().add(GoalEvent.currencyChanged(value!)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101),
                        );
                        if (picked != null) {
                          context.read<GoalBloc>().add(GoalEvent.dateSelected(picked));
                        }
                      },
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          SizedBox(width: 10),
                          BlocBuilder<GoalBloc, GoalState>(
                            builder: (context, state) {
                              return TextWidget(
                                text: "due_date",
                                namedArgs: {
                                  "date": "${state.dueDate.day} / ${state.dueDate.month} / ${state.dueDate.year}"
                                },
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    BlocBuilder<GoalBloc, GoalState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade800,
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                          ),
                          onPressed: state.isSaving
                              ? null
                              : () => context.read<GoalBloc>().add(GoalEvent.saveGoal()),
                          child: state.isSaving ? CircularProgressIndicator() : TextWidget(text: "save"),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
