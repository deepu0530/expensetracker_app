

import 'package:expense_tracker/add_transaction.dart';
import 'package:expense_tracker/expense.dart';
import 'package:expense_tracker/income.dart';
import 'package:expense_tracker/transaction_details.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    Key key,
  }) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<String> name = [
    "Cashback Offer",
    "Cheesy Pizza",
    "Freelancing",
    "Metro Railway",
  ];
  List<String> content = [
    "Entertainment",
    "Transportation",
    "Transportation",
    "Transportation",
  ];
  List<String> date = [
    "Oct 30, 2021",
    "Oct 30, 2021",
    "Oct 30, 2021",
    "Oct 30, 2021",
  ];
  List<String> amount = [
    "+\$30",
    "-\$30",
    "+\$30",
    "-\$30",
  ];
  List<Color> amountcolor = [
    Color(0xFFA7E2BF),
    Color(0xFFEE6B6B),
    Color(0xFFA7E2BF),
    Color(0xFFEE6B6B),
  ];
  List<String> image = [
    "assets/images/cashback.png",
    "assets/images/cheesy.png",
    "assets/images/freelancing.png",
    "assets/images/metro.png",
  ];
  String dropdownValue = 'One';
  final List<String> tracker =["Dashboard","All Income","All Expence"];
  String track = "Dashboard";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF9F9F9),
      body: Container(
        padding: EdgeInsets.only(top: 28,),
        //color: Color(0xFFF9F9F9),

        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
              height: 80,
              width: 500,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      DropdownButton<String>(

                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                          iconSize: 30,
                          elevation: 10,
                          underline: Container(),
                          value: track,
                          items: tracker.map<DropdownMenuItem<String>>((value){
                            return DropdownMenuItem(

                                child: Text(value,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                value: value);
                          }).toList(),
                          onChanged: (value){
                            setState(() {
                              track = value;
                            });
                          }
                      ),

                      //Text("Dashboard",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),



                      //IconButton(icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 30,), onPressed: (){}),
                    ],
                  ),
                  Row(
                    children: [

                      IconButton(icon: Icon(Icons.lightbulb_outline,color: Colors.black,size: 20,), onPressed: (){}),
                      PopupMenuButton(
                          icon: Icon(Icons.more_vert),
                          itemBuilder:(BuildContext context)=> <PopupMenuEntry>[
                            PopupMenuItem(
                                child:ListTile(
                                  title: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => TransactionDetails(
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),)),
                                )
                            ),
                            PopupMenuItem(
                                child:ListTile(
                                  title: Text("About",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                )
                            ),
                          ]
                      ),
                      // IconButton(icon: Icon(Icons.more_vert,color: Colors.black,size: 30,), onPressed: (){
                      //
                      // }),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 0,left: 20,right: 20),
              child: Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TOTAL BALANCE",style: TextStyle(color: Color(0xFFB1B1B1),fontWeight: FontWeight.bold,fontSize: 10),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$23,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),
                    ],
                  )
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15,bottom: 0,left: 20,right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Income(
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                      height: 150,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color:Color(0xFFF1FAF5),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_downward,color: Color(0xFF6FCF97),),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text("TOTAL INCOME",style: TextStyle(color: Color(0xFFB1B1B1),fontWeight: FontWeight.bold,fontSize: 10),),
                                    SizedBox(height: 10,),
                                    Text("+\$23,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                  ]
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  // Amount(amount: "+\$23,000",totalname: "TOTAL INCOME",circlecolor: Color(0xFFF1FAF5),arrowcolor: Color(0xFF6FCF97),arrowicon: Icons.arrow_downward),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Expense(
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                      height: 150,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFFDEEEE),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_upward,color: Color(0xFFEE6B6B),),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text("TOTAL EXPENSE",style: TextStyle(color: Color(0xFFB1B1B1),fontWeight: FontWeight.bold,fontSize: 10),),
                                    SizedBox(height: 10,),
                                    Text("-\$23,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                                  ]
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //Amount(amount: "-\$23,000",totalname: "TOTAL EXPENSE",circlecolor: Color(0xFFFDEEEE),arrowcolor: Color(0xFFEE6B6B),arrowicon: Icons.arrow_upward),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Text("Recent Transaction",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Expanded(
              child: Container(
                child:Container(
                  padding: EdgeInsets.only(right: 23, left: 23),
                  child: ListView.separated(
                    itemCount:name.length,
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Recents(
                        name: name[index],
                        amount: amount[index],
                        amountcolor: amountcolor[index],
                        content: content[index],
                        date: date[index],
                        image: image[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF006AF6),
        child:
        Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTransaction(
              ),
            ),
          );
        },
      ),
    );
  }
}




class Recents extends StatelessWidget {
  const Recents({
    this.amount,this.date,this.name,this.content,this.amountcolor,this.image,
    Key key,
  }) : super(key: key);
  final String name;
  final String content;
  final String amount;
  final String date;
  final Color amountcolor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
        ),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  //padding: EdgeInsets.only(top: 10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:  Center(child: Image(
                      image: AssetImage(image),
                      width: 30,
                      height: 30,

                    ),)
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 15,),
                    Text(content,style: TextStyle(color: Colors.black,fontSize: 12),),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(amount,style: TextStyle(color: amountcolor,fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 15,),
                    Text(date,style: TextStyle(color: Colors.black,fontSize: 12),),
                  ],
                ),
              ],
            )
          ],
        ),
      );
  }
}