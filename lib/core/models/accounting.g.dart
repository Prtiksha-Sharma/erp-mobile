// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerAccount _$LedgerAccountFromJson(Map<String, dynamic> json) =>
    _LedgerAccount(
      accountId: json['account_id'] as String,
      accountCode: json['account_code'] as String? ?? '',
      accountName: json['account_name'] as String? ?? '',
      accountType: json['account_type'] as String? ?? '',
      accountSubtype: json['account_subtype'] as String?,
      parentAccountId: json['parent_account_id'] as String?,
      openingBalance: decimalFromJson(json['opening_balance']),
      openingBalanceSide: json['opening_balance_side'] as String?,
      isSystemAccount: json['is_system_account'] as bool? ?? false,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$LedgerAccountToJson(_LedgerAccount instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'account_type': instance.accountType,
      'account_subtype': instance.accountSubtype,
      'parent_account_id': instance.parentAccountId,
      'opening_balance': decimalToJson(instance.openingBalance),
      'opening_balance_side': instance.openingBalanceSide,
      'is_system_account': instance.isSystemAccount,
      'is_active': instance.isActive,
    };

_ReportPeriod _$ReportPeriodFromJson(Map<String, dynamic> json) =>
    _ReportPeriod(from: json['from'] as String?, to: json['to'] as String?);

Map<String, dynamic> _$ReportPeriodToJson(_ReportPeriod instance) =>
    <String, dynamic>{'from': instance.from, 'to': instance.to};

_AccountTotalRow _$AccountTotalRowFromJson(Map<String, dynamic> json) =>
    _AccountTotalRow(
      accountId: json['account_id'] as String,
      accountCode: json['account_code'] as String? ?? '',
      accountName: json['account_name'] as String? ?? '',
      accountType: json['account_type'] as String? ?? '',
      accountSubtype: json['account_subtype'] as String?,
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
      net: decimalFromJson(_readNet(json, 'net')),
    );

Map<String, dynamic> _$AccountTotalRowToJson(_AccountTotalRow instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'account_type': instance.accountType,
      'account_subtype': instance.accountSubtype,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'net': decimalToJson(instance.net),
    };

_AccountGroup _$AccountGroupFromJson(Map<String, dynamic> json) =>
    _AccountGroup(
      description: json['description'] as String?,
      accounts:
          (json['accounts'] as List<dynamic>?)
              ?.map((e) => AccountTotalRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: decimalFromJson(json['total']),
      netIncome: _nullableDecimal(json['net_income']),
    );

Map<String, dynamic> _$AccountGroupToJson(_AccountGroup instance) =>
    <String, dynamic>{
      'description': instance.description,
      'accounts': instance.accounts,
      'total': decimalToJson(instance.total),
      'net_income': _nullableDecimalToJson(instance.netIncome),
    };

_TrialBalance _$TrialBalanceFromJson(Map<String, dynamic> json) =>
    _TrialBalance(
      asOf: json['as_of'] as String?,
      accounts:
          (json['accounts'] as List<dynamic>?)
              ?.map((e) => AccountTotalRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
      tieOut: json['tie_out'] as bool? ?? false,
    );

Map<String, dynamic> _$TrialBalanceToJson(_TrialBalance instance) =>
    <String, dynamic>{
      'as_of': instance.asOf,
      'accounts': instance.accounts,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'tie_out': instance.tieOut,
    };

_ProfitAndLoss _$ProfitAndLossFromJson(Map<String, dynamic> json) =>
    _ProfitAndLoss(
      period: json['period'] == null
          ? null
          : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
      income: AccountGroup.fromJson(json['income'] as Map<String, dynamic>),
      expenses: AccountGroup.fromJson(json['expenses'] as Map<String, dynamic>),
      netProfit: decimalFromJson(json['net_profit']),
      isProfit: json['is_profit'] as bool? ?? true,
    );

Map<String, dynamic> _$ProfitAndLossToJson(_ProfitAndLoss instance) =>
    <String, dynamic>{
      'period': instance.period,
      'income': instance.income,
      'expenses': instance.expenses,
      'net_profit': decimalToJson(instance.netProfit),
      'is_profit': instance.isProfit,
    };

_BalanceSheet _$BalanceSheetFromJson(Map<String, dynamic> json) =>
    _BalanceSheet(
      asOf: json['as_of'] as String?,
      assets: AccountGroup.fromJson(json['assets'] as Map<String, dynamic>),
      liabilities: AccountGroup.fromJson(
        json['liabilities'] as Map<String, dynamic>,
      ),
      equity: AccountGroup.fromJson(json['equity'] as Map<String, dynamic>),
      totalLiabilitiesAndEquity: decimalFromJson(
        json['total_liabilities_and_equity'],
      ),
      isBalanced: json['is_balanced'] as bool? ?? false,
    );

Map<String, dynamic> _$BalanceSheetToJson(_BalanceSheet instance) =>
    <String, dynamic>{
      'as_of': instance.asOf,
      'assets': instance.assets,
      'liabilities': instance.liabilities,
      'equity': instance.equity,
      'total_liabilities_and_equity': decimalToJson(
        instance.totalLiabilitiesAndEquity,
      ),
      'is_balanced': instance.isBalanced,
    };

_OutstandingReport _$OutstandingReportFromJson(Map<String, dynamic> json) =>
    _OutstandingReport(
      asOf: json['as_of'] as String?,
      receivables: AccountGroup.fromJson(
        json['receivables'] as Map<String, dynamic>,
      ),
      payables: AccountGroup.fromJson(json['payables'] as Map<String, dynamic>),
      netPosition: decimalFromJson(json['net_position']),
    );

Map<String, dynamic> _$OutstandingReportToJson(_OutstandingReport instance) =>
    <String, dynamic>{
      'as_of': instance.asOf,
      'receivables': instance.receivables,
      'payables': instance.payables,
      'net_position': decimalToJson(instance.netPosition),
    };

_BookLine _$BookLineFromJson(Map<String, dynamic> json) => _BookLine(
  lineId: json['line_id'] as String?,
  entryId: json['entry_id'] as String?,
  voucherNo: json['voucher_no'] as String? ?? '',
  entryDate: json['entry_date'] == null
      ? null
      : DateTime.parse(json['entry_date'] as String),
  narration: json['narration'] as String?,
  entryType: json['entry_type'] as String?,
  lineNarration: json['line_narration'] as String?,
  debitAmount: decimalFromJson(json['debit_amount']),
  creditAmount: decimalFromJson(json['credit_amount']),
  runningBalance: decimalFromJson(json['running_balance']),
);

Map<String, dynamic> _$BookLineToJson(_BookLine instance) => <String, dynamic>{
  'line_id': instance.lineId,
  'entry_id': instance.entryId,
  'voucher_no': instance.voucherNo,
  'entry_date': instance.entryDate?.toIso8601String(),
  'narration': instance.narration,
  'entry_type': instance.entryType,
  'line_narration': instance.lineNarration,
  'debit_amount': decimalToJson(instance.debitAmount),
  'credit_amount': decimalToJson(instance.creditAmount),
  'running_balance': decimalToJson(instance.runningBalance),
};

_LedgerAccountRef _$LedgerAccountRefFromJson(Map<String, dynamic> json) =>
    _LedgerAccountRef(
      accountId: json['account_id'] as String,
      accountCode: json['account_code'] as String? ?? '',
      accountName: json['account_name'] as String? ?? '',
      accountType: json['account_type'] as String? ?? '',
      accountSubtype: json['account_subtype'] as String?,
    );

Map<String, dynamic> _$LedgerAccountRefToJson(_LedgerAccountRef instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'account_type': instance.accountType,
      'account_subtype': instance.accountSubtype,
    };

_LedgerReport _$LedgerReportFromJson(Map<String, dynamic> json) =>
    _LedgerReport(
      account: LedgerAccountRef.fromJson(
        json['account'] as Map<String, dynamic>,
      ),
      period: json['period'] == null
          ? null
          : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
      openingBalance: decimalFromJson(json['opening_balance']),
      lines:
          (json['lines'] as List<dynamic>?)
              ?.map((e) => BookLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
      closingBalance: decimalFromJson(json['closing_balance']),
    );

Map<String, dynamic> _$LedgerReportToJson(_LedgerReport instance) =>
    <String, dynamic>{
      'account': instance.account,
      'period': instance.period,
      'opening_balance': decimalToJson(instance.openingBalance),
      'lines': instance.lines,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'closing_balance': decimalToJson(instance.closingBalance),
    };

_BookAccount _$BookAccountFromJson(Map<String, dynamic> json) => _BookAccount(
  accountId: json['account_id'] as String,
  accountCode: json['account_code'] as String? ?? '',
  accountName: json['account_name'] as String? ?? '',
  accountSubtype: json['account_subtype'] as String?,
  openingBalance: decimalFromJson(json['opening_balance']),
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => BookLine.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalDebit: decimalFromJson(json['total_debit']),
  totalCredit: decimalFromJson(json['total_credit']),
  closingBalance: decimalFromJson(json['closing_balance']),
);

Map<String, dynamic> _$BookAccountToJson(_BookAccount instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'account_subtype': instance.accountSubtype,
      'opening_balance': decimalToJson(instance.openingBalance),
      'lines': instance.lines,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'closing_balance': decimalToJson(instance.closingBalance),
    };

_CashBankBook _$CashBankBookFromJson(Map<String, dynamic> json) =>
    _CashBankBook(
      period: json['period'] == null
          ? null
          : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
      accounts:
          (json['accounts'] as List<dynamic>?)
              ?.map((e) => BookAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalOpeningBalance: decimalFromJson(json['total_opening_balance']),
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
      totalClosingBalance: decimalFromJson(json['total_closing_balance']),
    );

Map<String, dynamic> _$CashBankBookToJson(_CashBankBook instance) =>
    <String, dynamic>{
      'period': instance.period,
      'accounts': instance.accounts,
      'total_opening_balance': decimalToJson(instance.totalOpeningBalance),
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'total_closing_balance': decimalToJson(instance.totalClosingBalance),
    };

_DayBookLine _$DayBookLineFromJson(Map<String, dynamic> json) => _DayBookLine(
  accountId: json['account_id'] as String?,
  accountCode: json['account_code'] as String? ?? '',
  accountName: json['account_name'] as String? ?? '',
  accountType: json['account_type'] as String?,
  debitAmount: decimalFromJson(json['debit_amount']),
  creditAmount: decimalFromJson(json['credit_amount']),
  lineNarration: json['line_narration'] as String?,
);

Map<String, dynamic> _$DayBookLineToJson(_DayBookLine instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'account_type': instance.accountType,
      'debit_amount': decimalToJson(instance.debitAmount),
      'credit_amount': decimalToJson(instance.creditAmount),
      'line_narration': instance.lineNarration,
    };

_DayBookEntry _$DayBookEntryFromJson(Map<String, dynamic> json) =>
    _DayBookEntry(
      entryId: json['entry_id'] as String,
      voucherNo: json['voucher_no'] as String? ?? '',
      entryDate: json['entry_date'] == null
          ? null
          : DateTime.parse(json['entry_date'] as String),
      narration: json['narration'] as String?,
      entryType: json['entry_type'] as String? ?? '',
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
      lines:
          (json['lines'] as List<dynamic>?)
              ?.map((e) => DayBookLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DayBookEntryToJson(_DayBookEntry instance) =>
    <String, dynamic>{
      'entry_id': instance.entryId,
      'voucher_no': instance.voucherNo,
      'entry_date': instance.entryDate?.toIso8601String(),
      'narration': instance.narration,
      'entry_type': instance.entryType,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
      'lines': instance.lines,
    };

_DayBook _$DayBookFromJson(Map<String, dynamic> json) => _DayBook(
  period: json['period'] == null
      ? null
      : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
  entries:
      (json['entries'] as List<dynamic>?)
          ?.map((e) => DayBookEntry.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalDebit: decimalFromJson(json['total_debit']),
  totalCredit: decimalFromJson(json['total_credit']),
);

Map<String, dynamic> _$DayBookToJson(_DayBook instance) => <String, dynamic>{
  'period': instance.period,
  'entries': instance.entries,
  'total_debit': decimalToJson(instance.totalDebit),
  'total_credit': decimalToJson(instance.totalCredit),
};

_GstItem _$GstItemFromJson(Map<String, dynamic> json) => _GstItem(
  documentNo: _readDocNo(json, 'voucher_no') as String?,
  entryDate: json['entry_date'] == null
      ? null
      : DateTime.parse(json['entry_date'] as String),
  party: _readParty(json, 'party') as String?,
  partyType: _readPartyType(json, 'party_type') as String?,
  detail: _readDetail(json, 'detail') as String?,
  noteType: json['note_type'] as String?,
  amount: decimalFromJson(json['amount']),
  gstAmount: decimalFromJson(json['gst_amount']),
);

Map<String, dynamic> _$GstItemToJson(_GstItem instance) => <String, dynamic>{
  'voucher_no': instance.documentNo,
  'entry_date': instance.entryDate?.toIso8601String(),
  'party': instance.party,
  'party_type': instance.partyType,
  'detail': instance.detail,
  'note_type': instance.noteType,
  'amount': decimalToJson(instance.amount),
  'gst_amount': decimalToJson(instance.gstAmount),
};

_GstSection _$GstSectionFromJson(Map<String, dynamic> json) => _GstSection(
  description: json['description'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => GstItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  total: decimalFromJson(json['total']),
);

Map<String, dynamic> _$GstSectionToJson(_GstSection instance) =>
    <String, dynamic>{
      'description': instance.description,
      'items': instance.items,
      'total': decimalToJson(instance.total),
    };

_GstReport _$GstReportFromJson(Map<String, dynamic> json) => _GstReport(
  period: json['period'] == null
      ? null
      : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
  outputGst: GstSection.fromJson(json['output_gst'] as Map<String, dynamic>),
  inputGst: GstSection.fromJson(json['input_gst'] as Map<String, dynamic>),
  adjustmentGst: GstSection.fromJson(
    json['adjustment_gst'] as Map<String, dynamic>,
  ),
  netGstLiability: decimalFromJson(json['net_gst_liability']),
);

Map<String, dynamic> _$GstReportToJson(_GstReport instance) =>
    <String, dynamic>{
      'period': instance.period,
      'output_gst': instance.outputGst,
      'input_gst': instance.inputGst,
      'adjustment_gst': instance.adjustmentGst,
      'net_gst_liability': decimalToJson(instance.netGstLiability),
    };

_TdsItem _$TdsItemFromJson(Map<String, dynamic> json) => _TdsItem(
  voucherNo: json['voucher_no'] as String? ?? '',
  entryDate: json['entry_date'] == null
      ? null
      : DateTime.parse(json['entry_date'] as String),
  payeeName: json['payee_name'] as String?,
  payeeType: json['payee_type'] as String?,
  amount: decimalFromJson(json['amount']),
  tdsSection: json['tds_section'] as String?,
  tdsAmount: decimalFromJson(json['tds_amount']),
  purpose: json['purpose'] as String?,
);

Map<String, dynamic> _$TdsItemToJson(_TdsItem instance) => <String, dynamic>{
  'voucher_no': instance.voucherNo,
  'entry_date': instance.entryDate?.toIso8601String(),
  'payee_name': instance.payeeName,
  'payee_type': instance.payeeType,
  'amount': decimalToJson(instance.amount),
  'tds_section': instance.tdsSection,
  'tds_amount': decimalToJson(instance.tdsAmount),
  'purpose': instance.purpose,
};

_TdsSection _$TdsSectionFromJson(Map<String, dynamic> json) => _TdsSection(
  tdsSection: json['tds_section'] as String? ?? 'UNSPECIFIED',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => TdsItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalBaseAmount: decimalFromJson(json['total_base_amount']),
  totalTdsAmount: decimalFromJson(json['total_tds_amount']),
);

Map<String, dynamic> _$TdsSectionToJson(_TdsSection instance) =>
    <String, dynamic>{
      'tds_section': instance.tdsSection,
      'items': instance.items,
      'total_base_amount': decimalToJson(instance.totalBaseAmount),
      'total_tds_amount': decimalToJson(instance.totalTdsAmount),
    };

_TdsReport _$TdsReportFromJson(Map<String, dynamic> json) => _TdsReport(
  period: json['period'] == null
      ? null
      : ReportPeriod.fromJson(json['period'] as Map<String, dynamic>),
  sections:
      (json['sections'] as List<dynamic>?)
          ?.map((e) => TdsSection.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalTds: decimalFromJson(json['total_tds']),
);

Map<String, dynamic> _$TdsReportToJson(_TdsReport instance) =>
    <String, dynamic>{
      'period': instance.period,
      'sections': instance.sections,
      'total_tds': decimalToJson(instance.totalTds),
    };
