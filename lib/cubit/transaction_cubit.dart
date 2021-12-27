// ignore_for_file: empty_catches, unused_import, unused_local_variable
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:top_train/models/transaction_model.dart';
import 'package:top_train/services/transaction_service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSucces([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());

      List<TransactionModel> transactions =
          await TransactionService().fetchTransactions();

      emit(TransactionSucces(transactions));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
