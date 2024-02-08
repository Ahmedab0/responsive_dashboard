import 'package:flutter/material.dart';
import 'all_expenses_widget.dart';
import 'card_and_transaction_section.dart';
import 'custom_background_container.dart';
import 'my_card.dart';
import '../widget/mobile_layout_widget.dart';

import 'cards_page_views.dart';
import 'custom_drawer.dart';
import 'my_card_section.dart';
import 'quick_invoice.dart';
import 'side_bar_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F9FA),
      //drawer: const CustomDrawer(),
      body: Row(
        children: [
          // Custom Drawer
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(width: 32),
          //
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      // MobileLayout
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(height: 40),
                            // All Expenses Section
                            AllExpenses(),
                            SizedBox(height: 24),
                            QuickInvoice(),
                            SizedBox(
                              height: 32,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 24),
                      // Side Bar
                      Expanded(
                        child: SideBar(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 32),
        ],
      ),
    );
  }
}
