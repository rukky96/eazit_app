import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var changeContainer = const FormContainer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'New Cashpoint',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          leading: Container(
              margin: const EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                  color: Colors.purple.shade900, shape: BoxShape.circle),
              child: IconButton(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 5),
                hoverColor: Colors.transparent,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: Colors.white,
                ),
              )),
        ),
        body: Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.025,
              right: MediaQuery.of(context).size.width * 0.025,
            ),
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900)),
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
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('2234567894890075')
                                  ],
                                )
                              ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                size: 40,
                                color: Colors.purple.shade900,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 40,
                                color: Colors.purple.shade900,
                              ),
                            ],
                          )
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    width: MediaQuery.of(context).size.width * 0.95,
                    color: Colors.transparent,
                    child: changeContainer,
                  ),
                ])),
        bottomNavigationBar:
            BottomNavigationBar(backgroundColor: Colors.white, items: const [
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
        ]));
  }
}

class FormContainer extends StatefulWidget {
  const FormContainer({super.key});

  @override
  State<FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  List<Widget> formDetails = [];
  String formName = '';
  String formEmail = '';
  String formNumber = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'e.g John Doe'),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Email',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: emailController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'e.g. johndoe@gmail.com'),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Phone Number',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: phoneController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'e.g. 08012345678'),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class ListViewContainer extends StatefulWidget {
  const ListViewContainer({super.key});

  @override
  State<ListViewContainer> createState() => _ListViewContainerState();
}

class _ListViewContainerState extends State<ListViewContainer> {
  List<Widget> formDetails = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: formDetails,
      ),
    );
  }
}
