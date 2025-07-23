import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../widgets/add_expense_form.dart';
import '../widgets/expense_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Expense> _userExpenses = [];

  void _addExpense(String title, double amount) {
    final newExpense = Expense(
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userExpenses.add(newExpense);
    });
  }

  void _startAddExpense(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return AddExpenseForm(_addExpense);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpenseMate'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddExpense(context),
          )
        ],
      ),
      body: ExpenseList(_userExpenses),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddExpense(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
