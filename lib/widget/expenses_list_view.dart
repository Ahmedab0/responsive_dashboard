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
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
            child: ExpensesCard(
              expensesItemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
            child: ExpensesCard(
              expensesItemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 2) {
                setState(() {
                  selectedIndex = 2;
                });
              }
            },
            child: ExpensesCard(
              expensesItemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    /* Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0.0),
            child: buildInkWell(index, item),
          ),
        );
      }).toList(),
    ); */
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