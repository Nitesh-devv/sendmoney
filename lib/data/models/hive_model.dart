import 'package:hive/hive.dart';

part 'hive_model.g.dart'; // Required for Hive type adapter generation

@HiveType(typeId: 0) // Unique ID for the adapter
class TransactionBean extends HiveObject {

  @HiveField(0)
   String amount;

  @HiveField(1)
   DateTime time;

  TransactionBean({required this.amount, required this.time});
}