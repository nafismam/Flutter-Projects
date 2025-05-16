import 'package:flutter/material.dart';
import 'package:expensetracking_app/models/expense.dart';

class Expenses extends StatefulWidget{

  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }

}


class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [

    Expense(
      title: 'Flutter Course', 
      amount: 19.99, 
      date: DateTime.now(), 
      category: Category.work,
    ),

    Expense(
      title: 'Netflix', 
      amount: 4.99, 
      date: DateTime.now(), 
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('Expenses list ...'),
        ],
      )
    );
  }
}