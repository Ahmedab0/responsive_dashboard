import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'custom_button.dart';
import 'custom_title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomDropDownMenu()),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
                    txt: 'Add more details',
                    bgClr: Colors.transparent,
                    txtClr: Color(0xFF4EB7F2))),
            SizedBox(width: 24),
            Expanded(
                child:
                    CustomButton(txt: 'Send Money', bgClr: null, txtClr: null)),
          ],
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Item mount', style: AppStyles.medium16),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(12)),
          child: const DropdownMenu(
              expandedInsets: EdgeInsets.all(0),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              hintText: 'USD',
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: 'USA'),
                DropdownMenuEntry(value: 2, label: 'KD'),
                DropdownMenuEntry(value: 3, label: 'E.P'),
                DropdownMenuEntry(value: 4, label: 'RSA'),
              ]),
        ),
      ],
    );
  }
}
