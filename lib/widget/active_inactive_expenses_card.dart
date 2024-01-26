import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_svg/svg.dart';
import '../utils/app_styles.dart';

import '../model/expenses_item_model.dart';

class ActiveExpensesCard extends StatelessWidget {
  const ActiveExpensesCard({super.key, required this.expensesItemModel});

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: const Color(0xFF4DB7F2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  expensesItemModel.img,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expensesItemModel.title,
            style: AppStyles.semiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            DateFormat.yMMM().format(DateTime.now()),
            style: AppStyles.regular14,
          ),
          const SizedBox(height: 16),
          Text(
            '\$20.129',
            style: AppStyles.semiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class InActiveExpensesCard extends StatelessWidget {
  const InActiveExpensesCard({super.key, required this.expensesItemModel});

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: Color(0xfffafafa),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  expensesItemModel.img,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff064061),
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            expensesItemModel.title,
            style: AppStyles.semiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            DateFormat.yMMM().format(DateTime.now()),
            style: AppStyles.regular14,
          ),
          const SizedBox(height: 16),
          const Text(
            '\$20.129',
            style: AppStyles.semiBold24,
          ),
        ],
      ),
    );
  }
}
