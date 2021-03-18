import 'package:expense_tracker/add_transaction.dart';
import 'package:expense_tracker/edit_transaction.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatefulWidget {
  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
          padding: EdgeInsets.only(top: 40,left: 10,right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddTransaction(
                            ),
                          ),
                        );
                      }),


                    ],
                  ),
                  Row(
                    children: [
                      Text("Details",style: TextStyle(
                        color: Colors.black,fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 80,),
                      IconButton(icon: Icon(Icons.delete), onPressed: (){}

                      ),
                      IconButton(icon: Icon(Icons.share), onPressed: (){}

                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50,),
              Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: Column(
                    children: [
                      ListOfDetails(title: "Title",details: "Cashbook Offer - Pay me",),
                      SizedBox(height: 40,),
                      ListOfDetails(title: "Amount",details: "\$30",),
                      SizedBox(height: 40,),
                      ListOfDetails(title: "Transaction Type",details: "Income",),
                      SizedBox(height: 30,),
                      ListOfDetails(title: "Tags",details: "Entertainment",),
                      SizedBox(height: 40,),
                      ListOfDetails(title: "When",details: "Sunday, 18 Dec 8:30 AM",),
                      SizedBox(height: 40,),
                      ListOfDetails(title: "Note",details: "I got this amount from payme for recharge",),
                      SizedBox(height: 40,),
                      ListOfDetails(title: "Created At",details: "Jan 11, 2021, 11:30 AM",),
                    ],
                  )),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditTransaction(
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text("Edit",style: TextStyle(
                            color: Colors.white,fontSize: 16,
                          ),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class ListOfDetails extends StatefulWidget {
  const ListOfDetails({
    this.title,this.details,
    Key key,
  }) : super(key: key);
  final String title;
  final String details;

  @override
  _ListOfDetailsState createState() => _ListOfDetailsState();
}

class _ListOfDetailsState extends State<ListOfDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,style: TextStyle(
              color: Colors.grey[700],fontSize: 12,
              //fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Text(widget.details,style: TextStyle(
              color: Colors.black,fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ],
    );
  }
}

