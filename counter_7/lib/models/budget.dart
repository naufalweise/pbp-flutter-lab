class Budget {
  late String judul;
  late int nominal;
  late BudgetType type;
  DateTime? date;

  Budget({required this.judul, required this.nominal, required this.type, this.date});

  static Budget fromUserInput() {
    return Budget(judul: "", nominal: 0, type: BudgetType.pemasukkan);
  }
}

enum BudgetType { pengeluaran, pemasukkan }