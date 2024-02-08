import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_admin_dashboard/model/transaction_model.dart';
import 'package:responsive_admin_dashboard/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.semiBold16(context),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            isDebit()
                ? DateFormat.yMMMd().format(DateTime.now())
                : '${DateFormat.yMMMd().format(DateTime.now())} at ${DateFormat().add_jm().format(DateTime.now())}',
            style: AppStyles.regular16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
        ),
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            '\$${transactionModel.amount}',
            style: AppStyles.semiBold20(context).copyWith(
                color: isDebit()
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B)),
          ),
        ),
      ),
    );
  }

  bool isDebit() {
    if (transactionModel.isWithDrawal == WithDrawal.debit) {
      return true;
    } else {
      return false;
    }
  }
}
