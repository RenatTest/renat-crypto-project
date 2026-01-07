import 'package:renat_crypto_project/features/models_3d_new/data/repository/entities/models_3d_new_entity.dart';

class Models3dNewState {}

class Models3dNewStateInitial extends Models3dNewState {}

class Models3dNewStateLoading extends Models3dNewState {}

class Models3dNewStateLoaded extends Models3dNewState {
  Models3dNewStateLoaded({required this.models3dNew});

  final Models3dNewEntity models3dNew;
}

class Models3dNewStateError extends Models3dNewState {
  Models3dNewStateError({this.exception});

  final Object? exception;
}
