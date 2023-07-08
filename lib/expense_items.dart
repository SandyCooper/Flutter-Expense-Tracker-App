import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(catagoryIcon[expense.catagory]),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(expense.formatedDate),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
