class Budget {
  late String judul;
  late int nominal;
  late BudgetType type;

  Budget({required this.judul, required this.nominal, required this.type});

  static Budget fromUserInput() {
    return Budget(judul: "", nominal: 0, type: BudgetType.pemasukkan);
  }
}

enum BudgetType { pengeluaran, pemasukkan }