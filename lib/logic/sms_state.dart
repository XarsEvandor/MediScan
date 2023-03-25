part of 'sms_cubit.dart';

class SmsState extends Equatable {
  final User user;
  final Position? position;
  final String status;

  const SmsState(
      {required this.user, required this.position, this.status = ''});

  @override
  List<Object?> get props => [user, position, status];
}
