import 'package:flutter/material.dart';
import 'package:my_khalti/pages/qr.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({super.key});

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  bool isShow = false;

  void ShowNum() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            AppBar(
                backgroundColor: Theme.of(context).primaryColor,
                leading: CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/img/profile.png'),
                ),
                title: Text(
                  'Hello,Shrijana',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Colors.white),
                ),
                actions: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.notification_add))
                ]),
            const SizedBox(
              height: 20,
            ),
            //////balance displaying row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 100,
                    ),
                    Positioned(
                        child: GestureDetector(
                      onTap: ShowNum,
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        //---------------------this need be replace---------------------------------------------
                                        "Rs.",
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      isShow
                                          ? Text(
                                              "Rich",
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              "XXX.XX",
                                              style: TextStyle(
                                                  color: Colors.purple,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   height: 8,
                                // ),
                                GestureDetector(
                                  onTap: ShowNum,
                                  child: Row(
                                    children: [
                                      isShow
                                          ? Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.purple,
                                            )
                                          : Icon(
                                              Icons.visibility_off_outlined,
                                              color: Colors.purple,
                                            ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Khalti Balance",
                                        style: TextStyle(color: Colors.purple),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        height: 90,
                      ),
                    )),
                    Positioned(
                      right: 12,
                      top: 31,
                      child: Container(
                        height: 25,
                        width: 25,
                        //////////////////////-------------refresh---------------------------------
                        child: Icon(
                          Icons.refresh,
                          color: Colors.purple,
                          size: 20,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                // /add money
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return QrPage();
                    }));
                  },
                  child: Container(
                    width: 75,
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.wallet,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Add money",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                ///////send money
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return QrPage();
                    }));
                  },
                  child: Container(
                    height: 95,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.phone_android,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 200,
                          child: Padding(
                            padding: width > 400
                                ? const EdgeInsets.only(left: 2.0)
                                : const EdgeInsets.only(left: 10.0),
                            child: Text(
                              " Send Money",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
