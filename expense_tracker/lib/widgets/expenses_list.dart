import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.registeredexpanses});

  final List<Expense> registeredexpanses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredexpanses.length,
      itemBuilder: (context, index) => ExpenseItem(registeredexpanses[index])
    );
  }
}
