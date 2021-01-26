import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
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

 String value=_selectedItemValue;

  static String _selectedItemValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                margin:EdgeInsets.all(20),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blueGrey.shade50
                  //border: Border.all(color: Colors.blue.shade100,width: 2)



                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedItemValue = value;
                    });
                  },
                  child: DropdownButtonFormField(

                    validator: (value)=>value == null? "* please choose one" : null,
                    hint:Text('please select one'),
                    value: dropdownValue1,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      size: 33,
                    ),
                    
                    //iconDisabledColor: Colors.red,
                    iconEnabledColor: Colors.blue,
                    //isExpanded: true,
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.black, fontSize: 18),


                    /*underline: Container(
                      height: 2,
                      color: Colors.blue,
                    ),*/
                    onChanged: (String data) {
                      setState(() {
                        dropdownValue1 = data;
                      });

                    },

                    items: spinnerItems1
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(value: value,
                          child: Container(
                        margin: EdgeInsets.only(left: 10),
                           color: value == _selectedItemValue ? Colors.blue : Colors.white,
                          child: Text(value)),
                      );
                    }).toList(),

                    //items: null, onChanged:
                  ),
                ),
              ),

              //for email ,,,,,,,,,

              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey.shade50
                ),
                child: DropdownButton(
                  value: dropdownValue2,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 33,
                  ),
                  iconEnabledColor: Colors.blue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  /*underline: Container(
                    height: 2,
                    color: Colors.blue ,
                  ),*/
                  onChanged: (String data) {
                    setState(() {
                      dropdownValue2 = data;
                    });
                  },
                  items: spinnerItems2
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Container(
                      margin: EdgeInsets.only(left: 10),
                        child: Text(value)));
                  }).toList(),

                  //items: null, onChanged:
                ),
              ),

              Container(
               margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey.shade50
                ),
                child: DropdownButton(
                  value: dropdownValue3,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 33,
                  ),
                  iconEnabledColor: Colors.blue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  /*underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),*/
                  onChanged: (String data) {
                    setState(() {
                      dropdownValue3 = data;
                    });
                  },
                  items: spinnerItems3
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Container(
                      margin: EdgeInsets.only(left: 10),
                        child: Text(value)));
                  }).toList(),

                  //items: null, onChanged:
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey.shade50
                ),
                child: DropdownButton(
                  value: dropdownValue4,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 33,
                  ),
                  iconEnabledColor: Colors.blue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  /* underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),*/
                  onChanged: (String data) {
                    setState(() {
                      dropdownValue4 = data;
                    });
                  },
                  items: spinnerItems4
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(value: value, child: Container(
                      margin: EdgeInsets.only(left: 10),
                        child: Text(value)));
                  }).toList(),

                  //items: null, onChanged:
                ),
              ),

              /*Text('Selected Item = ' + '$dropdownValue',
                style: TextStyle(fontSize: 22,
                color: Colors.black),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
