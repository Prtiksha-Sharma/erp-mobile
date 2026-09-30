// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentInitiation _$PaymentInitiationFromJson(Map<String, dynamic> json) =>
    _PaymentInitiation(
      paymentId: json['paymentId'] as String,
      merchantOrderId: json['merchantOrderId'] as String,
      redirectUrl: json['redirectUrl'] as String,
      amount: decimalFromJson(json['amount']),
    );

Map<String, dynamic> _$PaymentInitiationToJson(_PaymentInitiation instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'merchantOrderId': instance.merchantOrderId,
      'redirectUrl': instance.redirectUrl,
      'amount': decimalToJson(instance.amount),
    };

_PaymentStatusResult _$PaymentStatusResultFromJson(Map<String, dynamic> json) =>
    _PaymentStatusResult(
      status: $enumDecode(
        _$PaymentStatusEnumMap,
        json['status'],
        unknownValue: PaymentStatus.unknown,
      ),
      merchantOrderId: json['merchantOrderId'] as String,
    );

Map<String, dynamic> _$PaymentStatusResultToJson(
  _PaymentStatusResult instance,
) => <String, dynamic>{
  'status': _$PaymentStatusEnumMap[instance.status]!,
  'merchantOrderId': instance.merchantOrderId,
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.success: 'Success',
  PaymentStatus.failed: 'Failed',
  PaymentStatus.pending: 'Pending',
  PaymentStatus.unknown: 'unknown',
};
