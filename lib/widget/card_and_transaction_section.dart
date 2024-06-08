import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_card_section.dart';
import 'transaction_history.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
