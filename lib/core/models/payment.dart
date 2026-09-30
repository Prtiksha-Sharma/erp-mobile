import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

/// Matches parent/payments.service.js#initiate and
/// #initiateInstallmentPayment's shared return shape (verified by direct
/// source read, both `return { paymentId, merchantOrderId, redirectUrl,
/// amount }` — camelCase already, no @JsonKey needed). `amount` is a plain
/// JS Number() sum (payments.service.js:38/110), not a Decimal passthrough,
/// but still routed through decimalFromJson for the same reason every other
/// money field is (see decimal_json.dart).
@freezed
abstract class PaymentInitiation with _$PaymentInitiation {
  const factory PaymentInitiation({
    required String paymentId,
    required String merchantOrderId,
    required String redirectUrl,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
  }) = _PaymentInitiation;

  factory PaymentInitiation.fromJson(Map<String, dynamic> json) => _$PaymentInitiationFromJson(json);
}

/// STATE_MAP in parent/payments.service.js maps PhonePe's own states onto
/// exactly these three strings — 'Success' | 'Failed' | 'Pending' — nothing
/// else is ever returned.
enum PaymentStatus {
  @JsonValue('Success')
  success,
  @JsonValue('Failed')
  failed,
  @JsonValue('Pending')
  pending,
  unknown,
}

@freezed
abstract class PaymentStatusResult with _$PaymentStatusResult {
  const factory PaymentStatusResult({
    @JsonKey(unknownEnumValue: PaymentStatus.unknown) required PaymentStatus status,
    required String merchantOrderId,
  }) = _PaymentStatusResult;

  factory PaymentStatusResult.fromJson(Map<String, dynamic> json) => _$PaymentStatusResultFromJson(json);
}
