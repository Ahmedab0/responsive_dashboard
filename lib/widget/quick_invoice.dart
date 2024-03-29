import 'package:flutter/material.dart';
import '../widget/custom_background_container.dart';

import 'latest_transaction_section.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24),
            LatestTransactionSection(),
            Divider(
              color: Color(0xffF1F1F1),
              height: 48,
            ),
            QuickInvoiceForm(),
          ],
        ));
  }
}
