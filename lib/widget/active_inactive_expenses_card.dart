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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
        ),
        color: const Color(0xFF4DB7F2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // start Header
          Row(
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      //padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          expensesItemModel.img,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
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
          // Start Body
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              expensesItemModel.title,
              style:
                  AppStyles.semiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              DateFormat.yMMM().format(DateTime.now()),
              style: AppStyles.regular14(context).copyWith(
                color: const Color(0xFFFAFAFA),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '\$20.129',
              style:
                  AppStyles.semiBold24(context).copyWith(color: Colors.white),
            ),
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
          // Start Header
          Row(
            children: [
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      //padding: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(
                        color: Color(0xfffafafa),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          expensesItemModel.img,
                        ),
                      ),
                    ),
                  ),
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
          // Start Body
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              expensesItemModel.title,
              style: AppStyles.semiBold16(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              DateFormat.yMMM().format(DateTime.now()),
              style: AppStyles.regular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '\$20.129',
              style: AppStyles.semiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
