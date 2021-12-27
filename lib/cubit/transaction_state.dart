// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSucces extends TransactionState {
  final List<TransactionModel> transaction;

  TransactionSucces(this.transaction);

  @override
  List<Object> get props => [transaction];

  get transactions => null;
}

class TransactionFailed extends TransactionState {
  final String error;

  TransactionFailed(this.error);

  @override
  List<Object> get props => [error];
}
