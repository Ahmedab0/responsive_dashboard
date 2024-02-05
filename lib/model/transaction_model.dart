class TransactionModel {
  final String title;
  final DateTime? date;
  final double amount;
  final WithDrawal isWithDrawal;

  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithDrawal});
}

enum WithDrawal {
  deposit,
  debit;
}
