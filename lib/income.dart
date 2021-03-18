
import 'package:flutter/material.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  List<String> name = [
    "Cashback Offer",
    "Donations",
    "Freelancing",
    "Brochure Design",
  ];
  List<String> content = [
    "Entertainment",
    "Side Projects",
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
    "+\$45",
    "+\$1300",
    "+\$140",
  ];
  List<Color> amountcolor = [
    Color(0xFFA7E2BF),
    Color(0xFFA7E2BF),
    Color(0xFFA7E2BF),
    Color(0xFFA7E2BF),
  ];
  List<String> image = [
    "assets/images/cashback.png",
    "assets/images/donation.png",
    "assets/images/freelancing.png",
    "assets/images/brochure.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Container(
        padding: EdgeInsets.only(top: 28,),
        // color: Color(0xFFF9F9F9),

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
                      Text("All Income",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      IconButton(icon: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 30,), onPressed: (){}),
                    ],
                  ),
                  Row(
                    children: [

                      IconButton(icon: Icon(Icons.lightbulb_outline,color: Colors.black,size: 20,), onPressed: (){}),
                      IconButton(icon: Icon(Icons.more_vert,color: Colors.black,size: 30,), onPressed: (){}),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 10,left: 20,right: 20),
              child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TOTAL INCOME",style: TextStyle(color: Color(0xFFB1B1B1),fontWeight: FontWeight.bold,fontSize: 10),),
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
            // Container(
            //   padding: EdgeInsets.only(top: 10,bottom: 0,left: 20,right: 20),
            //   child: Row(
            //     children: [
            //       Amount(amount: "+\$23,000",totalname: "TOTAL INCOME",circlecolor: Color(0xFFF1FAF5),arrowcolor: Color(0xFF6FCF97),arrowicon: Icons.arrow_downward),
            //       SizedBox(width: 20,),
            //       Amount(amount: "-\$23,000",totalname: "TOTAL EXPENSE",circlecolor: Color(0xFFFDEEEE),arrowcolor: Color(0xFFEE6B6B),arrowicon: Icons.arrow_upward),
            //     ],
            //   ),
            // ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Text("All Income",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
          //   Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AddTransaction(
          //     ),
          //   ),
          // );
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
