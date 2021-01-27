import 'package:flutter/material.dart';

class DropDownWidget1 extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget1> {
  String dropdownValue1 = 'Tinni';
  String dropdownValue2 = 'tinni@gmail.com';
  String dropdownValue3 = '01368526585';
  String dropdownValue4 = '8210';
  List<String> spinnerItems1 = ['Tinni', 'Pinki', 'Fahmida', "Mim", 'Jannat'];

  List<String> spinnerItems2 = [
    'tinni@gmail.com',
    'pinki@gmail.com',
    'fahmida@gmail.com',
    "mim@gmail.com",
    'jannat@gmail.com'
  ];

  List<String> spinnerItems3 = [
    '01368526585',
    '0132456987',
    '0123654789',
    "0123654789",
    '03697426552'
  ];
  List<String> spinnerItems4 = [
    '8210',
    '1216',
    '1207',
    '1211',
    '1215',
  ];

  String value = _selectedItemValue;

  static String _selectedItemValue;

  String selectedSalutation1;
  String selectedSalutation2;
  String selectedSalutation3;
  String selectedSalutation4;
  final _formKey = GlobalKey<FormState>();
  bool _autovalidate = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          autovalidate: _autovalidate,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  isDense: true,
                  value: selectedSalutation1,
                  hint: Text(
                    'Please Select something',
                  ),
                  onChanged: (salutation) =>
                      setState(() => selectedSalutation1 = salutation),
                  validator: (value) => value == null ? 'field required' : null,
                  items: spinnerItems1
                      .toList()
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField<String>(
                  isDense: true,
                  value: selectedSalutation2,
                  hint: Text(
                    'Please Select something',
                  ),
                  onChanged: (salutation1) =>
                      setState(() => selectedSalutation2 = salutation1),
                  validator: (value) => value == null ? 'field required' : null,
                  items: spinnerItems2
                      .toList()
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField<String>(
                  isDense: true,
                  value: selectedSalutation3,
                  hint: Text(
                    'Please Select something',
                  ),
                  onChanged: (salutation2) =>
                      setState(() => selectedSalutation3 = salutation2),
                  validator: (value) => value == null ? 'field required' : null,
                  items: spinnerItems3
                      .toList()
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField<String>(
                  isDense: true,
                  value: selectedSalutation4,
                  hint: Text(
                    'Please Select something',
                  ),
                  onChanged: (salutation3) =>
                      setState(() => selectedSalutation4 = salutation3),
                  validator: (value) => value == null ? 'field required' : null,
                  items: spinnerItems4
                      .toList()
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                FlatButton(
                  child: Text('PROCEED'),
                  color: Colors.green,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                    } else {
                      setState(() {
                        _autovalidate = true;
                      });
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}