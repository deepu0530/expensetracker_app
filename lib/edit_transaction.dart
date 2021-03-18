import 'package:expense_tracker/dashboard.dart';
import 'package:expense_tracker/transaction_details.dart';

import 'package:flutter/material.dart';

class EditTransaction extends StatefulWidget {
  @override
  _EditTransactionState createState() => _EditTransactionState();
}

class _EditTransactionState extends State<EditTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          //color: Color(0xFFFFFFFF),
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionDetails(),
                          ),
                        );
                      }),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Edit Transaction",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),

              TextField1(
                name1: "Title",
              ),
              SizedBox(
                height: 20,
              ),
              TextField1(
                name1: "Amount",
              ),
              SizedBox(
                height: 20,
              ),
              TransactionType(icon: Icons.keyboard_arrow_down),
              // TextField2(name2: "Transaction type",icon: Icons.keyboard_arrow_down,item1: "Transaction Type",item2: "Debit Card",item3: "Credit Card",),
              SizedBox(
                height: 20,
              ),
              Tags(icon: Icons.keyboard_arrow_down),
              //TextField2(name2: "Tags",icon: Icons.keyboard_arrow_down,item1: "Tags",item2: "Debit Card",item3: "Credit Card"),
              SizedBox(
                height: 20,
              ),
              When(icon: Icons.calendar_today_rounded),
              //TextField2(name2: "When",icon: Icons.calendar_today_rounded,item1: "When",item2: "Debit Card",item3: "Credit Card"),
              SizedBox(
                height: 20,
              ),
              TextField1(
                name1: "Note",
              ),
              SizedBox(
                height: 20,
              ),
              TextField1(
                name1: "Created At",
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashBoard(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                        "Edit Transaction",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionType extends StatefulWidget {
  const TransactionType({
    this.icon,
    Key key,
  }) : super(key: key);

  final IconData icon;
  @override
  _TransactionTypeState createState() => _TransactionTypeState();
}

class _TransactionTypeState extends State<TransactionType> {
  List _opts = ["Transaction Type", "Income"];
  String selectedItem = 'Transaction Type';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 1)
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0)),
        color: Color(0xFFF9F9F9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedItem,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          PopupMenuButton(
              itemBuilder: (BuildContext bc) {
                return _opts
                    .map((day) => PopupMenuItem(
                  child: Text(day),
                  value: day,
                ))
                    .toList();
              },
              onSelected: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              child: Icon(widget.icon, color: Colors.grey)),
        ],
      ),
    );
  }
}

class Tags extends StatefulWidget {
  const Tags({
    this.icon,
    Key key,
  }) : super(key: key);

  final IconData icon;
  @override
  _TagsState createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  List _options = ["Tags", "Entertainment",];
  String selectedItem = 'Tags';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 1)
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0)),
        color: Color(0xFFF9F9F9),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedItem,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          PopupMenuButton(
              itemBuilder: (BuildContext bc) {
                return _options
                    .map((day) => PopupMenuItem(
                  child: Text(day),
                  value: day,
                ))
                    .toList();
              },
              onSelected: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              child: Icon(widget.icon, color: Colors.grey)),
        ],
      ),
    );
  }
}




class When extends StatefulWidget {
  const When({
    this.icon,
    Key key,
  }) : super(key: key);

  final IconData icon;

  @override
  _WhenState createState() => _WhenState();
}

class _WhenState extends State<When> {
  List _options = ["When", "Sunday 18, 2020"];
  String selectedItem = 'When';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 1)
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0)),
        color: Color(0xFFF9F9F9),
      ),
      // child:
      // DropdownButton<String>(
      //   dropdownColor: Color(0xFFFFFFFF),
      //   style: TextStyle(
      //       color:Colors.grey[600],
      //     fontSize: 16
      //   ),
      //   isExpanded: true,
      //   underline: Container(),
      //   value: dropdownValue,
      //
      //   icon: Icon(widget.icon),
      //   iconSize: 30,
      //   elevation: 10,
      //   onChanged: (String newValue) {
      //     setState(() {
      //       dropdownValue = newValue;
      //     });
      //   },
      //   items: <String>[widget.item1,widget.item2, widget.item3,]
      //       .map<DropdownMenuItem<String>>((String value) {
      //     return DropdownMenuItem<String>(
      //       value: value,
      //       child: Text(value),
      //     );
      //   }).toList(),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedItem,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          PopupMenuButton(
              itemBuilder: (BuildContext bc) {
                return _options
                    .map((day) => PopupMenuItem(
                  child: Text(day),
                  value: day,
                ))
                    .toList();
              },
              onSelected: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              // itemBuilder:(BuildContext context)=> <PopupMenuEntry>[
              //   PopupMenuItem(
              //       child: Text(widget.item1)),
              //   PopupMenuItem(child: Text(widget.item2)),
              // ],
              child: Icon(widget.icon, color: Colors.grey)),
        ],
      ),
      // Center(
      //   child: TextField(
      //     cursorColor: Colors.grey,
      //     decoration: InputDecoration(
      //       hintText: widget.name2,
      //
      //       suffixIcon:
      //
      //       PopupMenuButton(
      //         onSelected: (value){
      //
      //         },
      //         itemBuilder:(BuildContext context)=> <PopupMenuEntry>[
      //           PopupMenuItem(child: Text(widget.item1)),
      //           PopupMenuItem(child: Text(widget.item2)),
      //         ],
      //           child: Icon(widget.icon,color: Colors.grey,)),
      //       border: InputBorder.none,
      //     ),
      //   ),
      // ),
    );
  }
}

class TextField1 extends StatefulWidget {
  const TextField1({
    this.name1,
    Key key,
  }) : super(key: key);
  final String name1;

  @override
  _TextField1State createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 1)
        ],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.0), topLeft: Radius.circular(5.0)),
        color: Color(0xFFF9F9F9),
      ),
      child: Center(
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            hintText: widget.name1,
            border: InputBorder.none,
            // border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
