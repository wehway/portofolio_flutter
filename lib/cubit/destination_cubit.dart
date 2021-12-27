// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:top_train/models/destination_model.dart';
import 'package:top_train/services/destination_service.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async{

    try {
      
      emit(DestinationLoading());

      List<DestinationModel> destinations = await DestinationService().fetchDestinations();

      emit(DestinationSucces(destinations));
    } catch (e) {

      emit(DestinationFailed(e.toString()));

    }

  }

}


