import 'package:renat_crypto_project/features/models_3d/data/repository/entities/models_3d_entity.dart';

class Models3dState {}

class Models3dStateInitial extends Models3dState {}

class Models3dStateLoading extends Models3dState {}

class Models3dStateLoaded extends Models3dState {
  Models3dStateLoaded({required this.models3d});

  final List<Models3dEntity> models3d;
}

class Models3dStateError extends Models3dState {
  Models3dStateError({this.exception});

  final Object? exception;
}
