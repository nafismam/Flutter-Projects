import 'package:uuid/uuid.dart';
// create unique id dynamically

const uuid = Uuid();

enum Category {
  food, travel, leisure, work
}

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


}