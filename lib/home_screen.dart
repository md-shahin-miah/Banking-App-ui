import 'package:flutter/material.dart';

import 'home_screen_option_button.dart';
import 'transaction_card.dart';
import 'transaction_screen.dart';

class FinanceAppHomeScreen extends StatefulWidget {
  const FinanceAppHomeScreen({Key? key}) : super(key: key);
  // static const routeName = "/finance-app";

  @override
  State<FinanceAppHomeScreen> createState() => _FinanceAppHomeScreenState();
}

class _FinanceAppHomeScreenState extends State<FinanceAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.grey[200],
       elevation: 0,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             decoration:const BoxDecoration(
                 color: Colors.white,
                 shape: BoxShape.circle
             ),
             child: Padding(
               padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
               child: const Icon(
                 Icons.menu,
                 color: Colors.black,
               ),
             ),
           ),
           Container(
             decoration: const BoxDecoration(
               color: Colors.white,
               shape: BoxShape.circle,
             ),
             child: Padding(
               padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
               child: const Icon(
                 Icons.emoji_emotions_outlined,
                 color: Colors.black,
               ),
             ),
           ),
         ],
       ),
     ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(MediaQuery.of(context).size.height*0.05),
                bottomLeft: Radius.circular(MediaQuery.of(context).size.height*0.05),
              ),
              color: Colors.grey[200],
            ),
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.height*0.6,

            child: Padding(
              padding:  const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance (USD)',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Row(
                        children: [
                          Text(
                            '\$42,000.00',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.026,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height*0.01,
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.012),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(MediaQuery.of(context).size.height*0.01),
                              child: Text(
                                'Active Balance',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.01,
                  ),
                  Container(
                    height:MediaQuery.of(context).size.height*0.17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MediaQuery.of(context).size.height*0.019),
                        topRight: Radius.circular(MediaQuery.of(context).size.height*0.019)
                      ),
                      color: Colors.deepOrange[800],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(MediaQuery.of(context).size.height*0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Primary Card',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.024,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '**** **** **** 7281',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery.of(context).size.height*0.03,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Row(
                                children: [
                                  const RotatedBox(
                                    quarterTurns:175,
                                    child: Icon(
                                      Icons.sim_card,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.01,
                                  ),
                                  Transform.rotate(
                                    angle: 1.5,
                                    child: const Icon(
                                      Icons.wifi,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.09,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(MediaQuery.of(context).size.height*0.019),
                        bottomRight: Radius.circular(MediaQuery.of(context).size.height*0.019),
                      ),
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.02,
                          left: MediaQuery.of(context).size.height*0.02,
                            right: MediaQuery.of(context).size.height*0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Holder',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: MediaQuery.of(context).size.height*0.019,
                                ),
                              ),
                              Text(
                                'Shahin Miah',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: MediaQuery.of(context).size.height*0.019,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: MediaQuery.of(context).size.height*0.012,
                            left: MediaQuery.of(context).size.height*0.02,
                            right: MediaQuery.of(context).size.height*0.02,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shahin miah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height*0.019,
                                ),
                              ),
                              Text(
                                '06/27',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height*0.019,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      HomeScreenOptionButton(
                        icon: Icons.monetization_on_outlined,
                        title: Text(
                          'Send',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      HomeScreenOptionButton(
                        icon: Icons.money_off_sharp,
                        title: Text(
                          'Request',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      HomeScreenOptionButton(
                        icon: Icons.wallet_rounded,
                        title: Text('Top Up',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      HomeScreenOptionButton(
                        icon: Icons.apps_sharp,
                        title: Text('More',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Transaction',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const TransactionScreen()));
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange[700],
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.33,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      TransactionCard(
                        icon:Icons.emoji_food_beverage_outlined,
                        title: const Text(
                          'Mcdonald .',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleT: Text(
                          'F&B',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleY: Text(
                          '22 June, 2021',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         titleU: Text(
                          '-\$22.21',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ),
                      TransactionCard(
                        icon:Icons.workspace_premium_outlined,
                        title: const Text(
                          'Upwork.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleT: Text(
                          'Work',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleY: Text(
                          '11 June, 2021',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleU: Text(
                          '+\$1,211.13',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ),
                      TransactionCard(
                        icon:Icons.ac_unit_rounded,
                        title: const Text(
                          'Amazon.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleT: Text(
                          'Shop',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleY: Text(
                          '12 June, 2021',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleU: Text(
                          '-\$101.89',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ),
                      TransactionCard(
                        icon:Icons.ac_unit_rounded,
                        title: const Text(
                          'Amazon.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleT: Text(
                          'Shop',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleY: Text(
                          '26 June, 2022',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleU: Text(
                          '-\$104.89',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ),
                      TransactionCard(
                        icon:Icons.ac_unit_rounded,
                        title: const Text(
                          'Amazon.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       titleT: Text(
                          'Shop',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleY: Text(
                          '1 June, 2022',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        titleU: Text(
                          '-\$205.99',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.height*0.02
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
