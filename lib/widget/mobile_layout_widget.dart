import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widget/custom_drawer.dart';
import '../widget/all_expenses_widget.dart';
import 'card_and_transaction_section.dart';
import 'income_section.dart';
import 'quick_invoice.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: screenWidth < 800
          ? const Drawer(
              child: CustomDrawer(),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: screenWidth < 800
          ? AppBar(
              foregroundColor: Colors.white,
              backgroundColor:
                  const Color(0xFF4DB7F2), //const Color(0xFF064060),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenWidth < 800 ? 0 : 40),
            // All Expenses Section
            const AllExpenses(),
            const SizedBox(height: 24),
            const QuickInvoice(),
            const SizedBox(height: 32),
            const CardAndTransactionSection(),
            const SizedBox(height: 24),
            const IncomeSection(),
          ],
        ),
      ),
    );
  }
}
