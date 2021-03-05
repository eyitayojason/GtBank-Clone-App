import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.black45,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/images/jason.jpeg",
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Welcome back, Jason!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/images/MasterCard.png",
                          filterQuality: FilterQuality.low,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Savings Account Balance",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "N239,000.00",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Book Balance",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "N239,000.00",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "11/22",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "**** **** 7323 8678",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Quick Actions",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    child: ListView(
                      itemExtent: 120,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Quickactions(),
                        Quickactions(),
                        Quickactions(),
                        Quickactions(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 170),
                      color: Colors.grey.shade200,
                      height: 2.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest Transactions",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            Text(
                              "View All",
                              style:
                                  TextStyle(color: Colors.deepOrange.shade300),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_forward,
                                size: 20, color: Colors.deepOrange),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Today",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TransactionTile(
                      iconData: Icons.call_made,
                      color: Colors.red,
                      color1: Colors.red.withOpacity(0.2),
                      title: Text(
                        "SMS Alert Charge",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "-234,000",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w500),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_received,
                      color: Colors.green,
                      color1: Colors.green.withOpacity(0.2),
                      title: Text(
                        "VAT Charge fees",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "+234,000",
                        style: TextStyle(color: Colors.green),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_received,
                      color: Colors.red,
                      color1: Colors.red.withOpacity(0.2),
                      title: Text(
                        "Debit Alert",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "-234,000",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_made,
                      color: Colors.green,
                      color1: Colors.green.withOpacity(0.2),
                      title: Text(
                        "VAT Charge fees",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "-234,000",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_received,
                      color: Colors.red,
                      color1: Colors.red.withOpacity(0.2),
                      title: Text(
                        "Debit Alert",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "-234,000",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_made,
                      color: Colors.green,
                      color1: Colors.green.withOpacity(0.2),
                      title: Text(
                        "VAT Charge fees",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "+234,000",
                        style: TextStyle(color: Colors.green),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionTile(
                      iconData: Icons.call_received,
                      color: Colors.green,
                      color1: Colors.green.withOpacity(0.2),
                      title: Text(
                        "Credit Alert",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "From Ekeh Confidence: 0449501831",
                        style: TextStyle(fontSize: 10),
                      ),
                      trailingtext1: Text(
                        "+234,000",
                        style: TextStyle(color: Colors.green),
                      ),
                      trailingtext2: Text(
                        "12 nov, 6:45pm",
                        style: TextStyle(fontSize: 10, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Quickactions extends StatelessWidget {
  final Color color;
  final Text text;

  final IconData iconData;
  Quickactions({this.color, this.text, this.iconData});

  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shadowColor: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mobile_screen_share,
            color: Colors.deepOrange,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Transfer"),
        ],
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  final Color color;
  final Color color1;

  final Text title;
  final Text subtitle;
  final Text trailingtext1;
  final Text trailingtext2;

  final IconData iconData;
  TransactionTile(
      {this.color,
      this.color1,
      this.iconData,
      this.title,
      this.subtitle,
      this.trailingtext1,
      this.trailingtext2});

  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shadowColor: Colors.black54,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 30,
          width: 30,
          child: Icon(
            iconData,
            color: color,
          ),
        ),
        title: title,
        subtitle: subtitle,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            trailingtext1,
            trailingtext2,
          ],
        ),
      ),
    );
  }
}
