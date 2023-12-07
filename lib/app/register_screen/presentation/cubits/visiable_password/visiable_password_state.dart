part of 'visiable_password_cubit.dart';

abstract class VisiablePasswordState {
  const VisiablePasswordState();
}
class VisiablepasswordInitial extends VisiablePasswordState {}
class VisiablepasswordSuccess extends VisiablePasswordState {}
class VisiablepasswordFailure extends VisiablePasswordState {}