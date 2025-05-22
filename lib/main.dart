import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final _transactions = [
    Transaction(
      id: 't1', 
      title: 'new run tennis', 
      value: 310.76, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't2', 
      title: 'ennergy bill', 
      value: 211.30, 
      date: DateTime.now()
    ),
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expenses"),
        backgroundColor: Colors.amber,
      ) ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Graphic"),
            ),
          ), 
          Card(
            child: Text("Transactions List"),
          )
        ]
      ),
    );
  }
}