import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// create unique id dynamically

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food, travel, leisure, work
}

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title, 
    required this.amount, 
    required this.date,
    required this.category, 
    }) : id = uuid.v4();//v4 gives unique string id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;// leisure etc


  String get formattedDate{
    return formatter.format(date);
  }


}