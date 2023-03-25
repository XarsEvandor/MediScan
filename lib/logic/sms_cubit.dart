import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:geolocator/geolocator.dart';
import 'package:equatable/equatable.dart';
import 'package:project_mediscan/logic/geolocator_cubit.dart';

import '../models/user_model.dart';
part 'sms_state.dart';

class SendSMSCubit extends Cubit<SmsState> {
  SendSMSCubit()
      : super(SmsState(
            user: User(), position: const GeolocatorState().position)) {
    _sendSMS(state.user, state.position!);
  }

  Future<void> _sendSMS(User user, Position position) async {
    final message =
        'MEDISCAN ALERT! ${user.firstName} is currently at latitude: ${position.latitude} and longitude ${position.longitude}. Please check on them.';
    final recipients =
        user.relatives?.map((relative) => relative.mobileNumber).toList();

    try {
      await _sendSMSmessage(message, recipients);
      emit(SmsState(user: user, position: position, status: 'SMS sent'));
    } catch (e) {
      emit(SmsState(user: user, position: position, status: 'SMS failed'));
    }
  }

  Future<void> _sendSMSmessage(
      String message, List<String?>? recipients) async {
    final nonNullableRecipients =
        recipients?.whereType<String>().toList() ?? [];

    await sendSMS(
            message: message,
            recipients: nonNullableRecipients,
            sendDirect: true)
        .catchError((onError) {
      return (onError);
    });
  }
}
