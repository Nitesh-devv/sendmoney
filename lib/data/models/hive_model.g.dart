// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionBeanAdapter extends TypeAdapter<TransactionBean> {
  @override
  final int typeId = 0;

  @override
  TransactionBean read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionBean(
      amount: fields[0] as String,
      time: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionBean obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.amount)
      ..writeByte(1)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionBeanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
