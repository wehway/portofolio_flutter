// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_overrides

part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSucces extends DestinationState {

  final List<DestinationModel> destinations;

  DestinationSucces(this.destinations);

  @override
  List<Object> get props => [destinations];

}

class DestinationFailed extends DestinationState{

  final String error;
  
  DestinationFailed(this.error);

  @override
  List<Object> get props => [error];

}