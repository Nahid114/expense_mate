import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;

  ExpenseList(this.expenses);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        return Card(
          child: ListTile(
            title: Text(expenses[index].title),
            subtitle: Text(
              expenses[index].amount.toStringAsFixed(2) + " ৳",
            ),
            trailing: Text(
              "${expenses[index].date.day}/${expenses[index].date.month}/${expenses[index].date.year}",
            ),
          ),
        );
      },
    );
  }
}
