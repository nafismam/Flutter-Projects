import 'package:expensetracking_app/models/expense.dart';
import 'package:expensetracking_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length, 
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey((expenses[index])), 
        onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
        },
        child:  ExpensesItem(
          expenses[index]
          )
        ),
    );
  }
}