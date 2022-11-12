import 'package:counter_7/menu/app_menu.dart';
import 'package:counter_7/models/budget.dart';
import 'package:flutter/material.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key});

  @override
  State<StatefulWidget> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _formChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Budget"),
      ),
      drawer: AppMenu(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            onChanged: _onFormChange,
            child: Column(
              children: [
                TextFormField(),
                TextFormField(),
                DropdownButtonFormField<BudgetType>(
                    items: BudgetType.values
                        .map<DropdownMenuItem<BudgetType>>((BudgetType type) {
                      return DropdownMenuItem<BudgetType>(
                          value: type, child: Text(type.name));
                    }).toList(),
                    onChanged: (e) {}),
                ElevatedButton(
                    onPressed: _onSubmitBtnPressed, child: Text("Simpan"))
              ],
            )),
      ),
    );
  }

  void _onFormChange() {}

  void _onSubmitBtnPressed() {}
}
