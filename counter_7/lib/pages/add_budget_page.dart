import 'package:counter_7/menu/app_menu.dart';
import 'package:counter_7/models/budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key, required this.addBudget});
  final void Function(Budget budget) addBudget;

  @override
  State<StatefulWidget> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _formChanged = false;
  final Budget _newBudget = Budget.fromUserInput();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Budget"),
      ),
      drawer: const AppMenu(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
            key: _formKey,
            onChanged: _onFormChange,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Judul",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (e) {
                      setState(() {
                        _newBudget.judul = e;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Judul tidak boleh kosong!";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Nominal",
                      border: OutlineInputBorder(),
                    ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (String? val) {
                      setState(() {
                        _newBudget.nominal = int.parse(val!);
                      });
                    },
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nominal harus diisi!";
                      }
                      return null;
                  },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<BudgetType>(
                      items: BudgetType.values
                          .map<DropdownMenuItem<BudgetType>>((BudgetType type) {
                        return DropdownMenuItem<BudgetType>(
                            value: type, child: Text(type.name));
                      }).toList(),
                      decoration: const InputDecoration(
                        labelText: "Jenis",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (e) {
                        setState(() {
                          _newBudget.type = e!;
                        });
                      },
                    validator: (e) {
                        if (e == null) {
                          return "Jenis harus diisi!";
                        }
                        return null;
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: _onSubmitBtnPressed, child: Text("Simpan"))
              ],
            )),
      ),
    );
  }

  void _onFormChange() {
    _formKey.currentState!.validate();
  }

  void _onSubmitBtnPressed() {
    if (_formKey.currentState!.validate()) {
      _handleAddNewBudget();

    }
  }

  void _handleAddNewBudget() {
    widget.addBudget(_newBudget);
  }
}
