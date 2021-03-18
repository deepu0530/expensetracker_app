import 'package:expense_tracker/dashboard.dart';
import 'package:expense_tracker/expense.dart';
import 'package:flutter/material.dart';

class ExpenseCurrency extends StatefulWidget {
  @override
  _ExpenseCurrencyState createState() => _ExpenseCurrencyState();
}

class _ExpenseCurrencyState extends State<ExpenseCurrency> {
  List <String> countrycurrency = ["EUR" ,"USD" , "CAD", "AUD","CHF","MXN" ,"RUB" ,"INR" ,"BRL"];
  List <String> contflag =[
    "assets/images/euro.png",
    "assets/images/united-states.png",
    "assets/images/canada2.png",
    "assets/images/australian.png",
    "assets/images/swiss.png",
    "assets/images/maxican.png",
    "assets/images/russian.png",
    "assets/images/india.png",
    "assets/images/brazilian.png",
  ];
  List <String> countryName = ["Euro" ," US Dollar" , "Canadian Dollar", "Australian Dollar","Swiss","Mexican" ,"Russian" ,"Indian" ,"Brazilian"];
  String    countryname = "INR";
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: Container(
            padding: EdgeInsets.only(top: 40,left: 20,right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Expense(
                          ),
                        ),
                      );
                    }
                    ),
                    SizedBox(width: 80,),
                    Text("Currency",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
                SizedBox(height: 30,),
                ListView.separated(
                    itemCount: countryName.length,
                    shrinkWrap: true,
                    itemBuilder: (context , index){
                      return InkWell(
                        onTap: (){
                          setState(() {
                            countryname = countrycurrency[index];
                          });
                        },
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      //color: Colors.red
                                      color: Color(0xFFF9F9F9),
                                      // image: DecorationImage(image: AssetImage("assets/images/india.png"))
                                    ),
                                    child:  Center(child: Image(
                                      image: AssetImage(contflag[index]),
                                      width: 20,
                                      height: 20,
                                    ),)
                                ),
                                SizedBox(width: 20,),
                                Text(countrycurrency[index],style: TextStyle(color: Color(0xFFB8B8B8),fontSize: 16,fontWeight: FontWeight.bold),),
                                SizedBox(width: 30,),
                                Text(countryName[index],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:  countryname== countrycurrency[index] ?Color(0xFFF1FAF5) : Colors.white,

                                  //color: Color(0xFFF1FAF5),
                                ),
                                child:  Center(child: Image(
                                  image: AssetImage("assets/images/tick.png"),
                                  width: 15,
                                  height: 15,
                                  color: countryname== countrycurrency[index] ?Color(0xFFB0E5C6): Colors.white,
                                  //color: Color(0xFFB0E5C6),
                                ),)
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 25,
                      );
                    }),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashBoard()
                          ),

                        );
                      },
                      child: Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            offset: Offset(0,1),
                            blurRadius: 2,
                            spreadRadius: 0.5,
                            color: Colors.grey,
                          )],
                          color: Colors.blueAccent,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text("Save",style: TextStyle(
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

