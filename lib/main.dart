import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:fluttericon/typicons_icons.dart';
// import 'package:fluttericon/fontelico_icons.dart';
// import 'package:fluttericon/linecons_icons.dart';
import 'package:ui_page_app_2/custom_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI 2',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Manage Store'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5,
            children: [
              CustomGridCard(
                  icon: Icons.announcement_outlined,
                  containerColor: Colors.orange,
                  text: Text(
                    '''Marketing
Designs''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.attach_money_outlined,
                  containerColor: Colors.green,
                  text: Text(
                    '''Online
Payments''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.local_offer_outlined,
                  containerColor: Colors.orange[200],
                  text: Text(
                    '''Discount
Coupons''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.people_alt_outlined,
                  containerColor: Colors.cyan,
                  text: Text(
                    '''My
Customers''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.qr_code_scanner_outlined,
                  containerColor: Color.fromARGB(255, 141, 141, 141),
                  text: Text(
                    '''Store QR
Code''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.money_sharp,
                  containerColor: Color.fromARGB(255, 101, 52, 179),
                  text: Text(
                    '''Extra
Charges''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              CustomGridCard(
                  icon: Icons.money_sharp,
                  containerColor: Color.fromARGB(255, 101, 52, 179),
                  text: Text(
                    '''Order
Form''',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -70,
                    top: 10,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.greenAccent[700]),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(7, 2, 7, 2),
                          child: Text(
                            "NEW",
                            style:
                                TextStyle(fontSize: 10.5, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
