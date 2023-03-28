import 'package:flutter/material.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  SampleItem? selectedMenu;
  List<Widget> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Мои карты",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 34),
            SingleChildScrollView(
              child: Container(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context,index){
                  return items[index];
                }),
              ),
            ),
            // items.length == 0 ? Container() : items[0],

            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 64,
            //     color: Colors.white,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SizedBox(width: 10),
            //         Image.asset("assets/Uzcard.png", width: 19, height: 19),
            //         SizedBox(width: 20),
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "432 861 839.29 UZS",
            //                 style: TextStyle(
            //                     color: Color(0xff000000),
            //                     fontSize: 15,
            //                     fontWeight: FontWeight.w500),
            //               ),
            //               SizedBox(height: 5),
            //               Text(
            //                 "8600 56** **** 9812",
            //                 style: TextStyle(
            //                     color: Color(0xff5B6871),
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: const [
            //             SizedBox(height: 10),
            //             Text(
            //               "ANORBANK",
            //               style: TextStyle(
            //                   color: Color(0xff84919A),
            //                   fontSize: 13,
            //                   fontWeight: FontWeight.w400),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: 90,
            //         ),
            //         PopupMenuButton<SampleItem>(
            //           initialValue: selectedMenu,
            //           // Callback that sets the selected popup menu item.
            //           onSelected: (SampleItem item) {
            //             setState(() {
            //               selectedMenu = item;
            //             });
            //           },
            //           itemBuilder: (BuildContext context) =>
            //               <PopupMenuEntry<SampleItem>>[
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemOne,
            //               child: Row(
            //                 children: [
            //                   Icon(
            //                     Icons.edit,
            //                     color: Color(0xff7059F6),
            //                   ),
            //                   SizedBox(width: 5),
            //                   Text(
            //                     'Редактировать',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemTwo,
            //               child: Row(
            //                 children: [
            //                   Icon(
            //                     Icons.lock,
            //                     color: Color(0xff7059F6),
            //                   ),
            //                   SizedBox(width: 5),
            //                   Text(
            //                     'Заблокировать карту',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemThree,
            //               child: Row(
            //                 children: [
            //                   Icon(Icons.delete, color: Colors.red),
            //                   Text(
            //                     'Удалить карту',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 64,
            //     color: Colors.white,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SizedBox(width: 10),
            //         Image.asset("assets/Uzcard.png", width: 19, height: 19),
            //         SizedBox(width: 20),
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "432 861 839.29 UZS",
            //                 style: TextStyle(
            //                     color: Color(0xff000000),
            //                     fontSize: 15,
            //                     fontWeight: FontWeight.w500),
            //               ),
            //               SizedBox(height: 5),
            //               Text(
            //                 "8600 56** **** 9812",
            //                 style: TextStyle(
            //                     color: Color(0xff5B6871),
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w400),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: const [
            //             SizedBox(height: 10),
            //             Text(
            //               "ANORBANK",
            //               style: TextStyle(
            //                   color: Color(0xff84919A),
            //                   fontSize: 13,
            //                   fontWeight: FontWeight.w400),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           width: 90,
            //         ),
            //         PopupMenuButton<SampleItem>(
            //           initialValue: selectedMenu,
            //           // Callback that sets the selected popup menu item.
            //           onSelected: (SampleItem item) {
            //             setState(() {
            //               selectedMenu = item;
            //             });
            //           },
            //           itemBuilder: (BuildContext context) =>
            //               <PopupMenuEntry<SampleItem>>[
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemOne,
            //               child: Row(
            //                 children: [
            //                   Icon(
            //                     Icons.edit,
            //                     color: Color(0xff7059F6),
            //                   ),
            //                   SizedBox(width: 5),
            //                   Text(
            //                     'Редактировать',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemTwo,
            //               child: Row(
            //                 children: [
            //                   Icon(
            //                     Icons.lock,
            //                     color: Color(0xff7059F6),
            //                   ),
            //                   SizedBox(width: 5),
            //                   Text(
            //                     'Заблокировать карту',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             PopupMenuItem<SampleItem>(
            //               value: SampleItem.itemThree,
            //               child: Row(
            //                 children: [
            //                   Icon(Icons.delete, color: Colors.red),
            //                   Text(
            //                     'Удалить карту',
            //                     style: TextStyle(
            //                       fontWeight: FontWeight.w400,
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: 280),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    items.add(addWidget());
                  });
                  print("::::${items.length}");
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff7059F6),
                  minimumSize: Size(400, 52),
                  // maximumSize: Size(200, 300)
                ),
                child: Text(
                  "Добавить",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }

  Widget addWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 64,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Image.asset("assets/Uzcard.png", width: 19, height: 19),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "432 861 839.29 UZS",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "8600 56** **** 9812",
                    style: TextStyle(
                        color: Color(0xff5B6871),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 10),
                Text(
                  "ANORBANK",
                  style: TextStyle(
                      color: Color(0xff84919A),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              width: 90,
            ),
            PopupMenuButton<SampleItem>(
              initialValue: selectedMenu,
              // Callback that sets the selected popup menu item.
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemOne,
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Color(0xff7059F6),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Редактировать',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemTwo,
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Color(0xff7059F6),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Заблокировать карту',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red),
                      Text(
                        'Удалить карту',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
