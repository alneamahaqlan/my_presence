import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/widgets/text_widget.dart';
import '../../data/models/transaction_model.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    super.key,
    required this.transactions,
  });

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: transactions[index].title,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${transactions[index].date}  ${transactions[index].time}",
                    style: GoogleFonts.poppins(
                        color: Colors.white70, fontSize: 12),
                  ),
                  Text(
                    transactions[index].amount,
                    style: GoogleFonts.poppins(
                      color: transactions[index].isIncome
                          ? Colors.greenAccent
                          : Colors.redAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}