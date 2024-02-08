import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/model/expenses_item_model.dart';
import 'package:responsive_admin_dashboard/utils/app_images.dart';

import 'expenses_card.dart';

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({super.key});

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {
  int selectedIndex = 0;

  final List<ExpensesItemModel> items = const [
    ExpensesItemModel(img: Assets.imagesMoneys, title: 'Balance'),
    ExpensesItemModel(img: Assets.imagesIncome, title: 'Income'),
    ExpensesItemModel(img: Assets.imagesExpenses, title: 'Expenses'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: buildInkWell(index, item),
            ),
          );
        } else {
          return Expanded(
            child: buildInkWell(index, item),
          );
        }
      }).toList(),
    );
  }

// buildInkWell Method
  InkWell buildInkWell(int index, ExpensesItemModel item) {
    return InkWell(
      onTap: () {
        if (selectedIndex != index) {
          setState(() {
            selectedIndex = index;
          });
        }
      },
      child: ExpensesCard(
        expensesItemModel: item,
        isActive: selectedIndex == index,
      ),
    );
  }
}


/*


ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: Row(
                children: [
                  ExpensesCard(
                    expensesItemModel: items[index],
                    isActive: selectedIndex == index,
                  ),
                  const SizedBox(
                    width: 12,
                  )
                ],
              ),
            ));


*/