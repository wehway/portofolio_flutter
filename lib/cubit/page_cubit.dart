// ignore_for_file: unused_import, unused_element

import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setpage(int newPage) {
    emit(newPage);
  

  void setPage(int index) {}
}
}
