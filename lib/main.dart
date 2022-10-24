import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const EazitApp());
}

class EazitApp extends StatelessWidget {
  const EazitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple.shade900, Colors.black12],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  stops: const [0.35, 0.0])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              titleSpacing: 30,
              title: const Text('Eazit',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              backgroundColor: Colors.purple.shade900,
              elevation: 0,
              actions: [
                Container(
                    width: 100,
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CircleAvatar(
                              minRadius: 18,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.black54,
                              )),
                          Text(
                            '|',
                            style: TextStyle(fontSize: 35),
                          ),
                          Icon(
                            Icons.settings_outlined,
                            size: 35,
                          )
                        ]))
              ],
            ),
            body: const FirstPage(),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: const [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.print,
                      color: Colors.black,
                    ),
                    label: 'Cashpoint',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.payments,
                      color: Colors.black,
                    ),
                    label: 'Transactions',
                  ),
                ]),
          ),
        ));
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.025,
        right: MediaQuery.of(context).size.width * 0.025,
      ),
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.20,
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
              decoration: const BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Balance',
                            style: TextStyle(height: 0),
                          ),
                          const Text('N200,500',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w900)),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Account Number',
                              style: TextStyle(height: 0)),
                          const Text('07 56 8860 90',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  height: 0)),
                          Row(
                            children: const [
                              Text('BVN:  ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('2234567894890075')
                            ],
                          )
                        ]),
                    Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                disabledBackgroundColor: Colors.transparent,
                                surfaceTintColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                elevation: 0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SecondPage()));
                            },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.purple.shade900,
                              child: const Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.cyan,
                              ),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('New Cashpoint',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width * 0.95,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.send),
                                Text('Transfer')
                              ]),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.credit_card),
                                  Text('Withdraw Funds')
                                ]))
                      ]),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.payment_outlined),
                                  Text('Pay Bills')
                                ])),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.clean_hands),
                                  Text('Send Airtime')
                                ]))
                      ])
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
              color: Colors.transparent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Recent Transactions',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text('Bathroom Sink',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  height: 0)),
                          Text(
                            '13th Oct 2022  4:30 AM',
                          ),
                        ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'See all',
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('\$62,000',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                height: 0)),
                      ],
                    )
                  ]),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.purple.shade900, Colors.cyan],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Made Inbound Transfer @NGN0.1 and Inter \n Bank Transfer @NGN16.0',
                  style:
                      TextStyle(color: Colors.white, height: 2, fontSize: 18),
                )),
          ]),
    );
  }
}
