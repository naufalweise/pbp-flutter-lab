class Budget {
  late String judul;
  late int nominal;
  late BudgetType type;

  Budget({required this.judul, required this.nominal, required this.type});
}

enum BudgetType { pengeluaran, pemasukkan }