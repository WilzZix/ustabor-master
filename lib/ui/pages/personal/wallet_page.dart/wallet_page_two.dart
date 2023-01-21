import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  const Second_page({
    super.key,
  });

  @override
  State<Second_page> createState() => _Second_pageState();
}

// ignore: camel_case_types
class _Second_pageState extends State<Second_page>
    with SingleTickerProviderStateMixin {
  late TabController tapController;
  @override
  void initState() {
    tapController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Column(children: [
          TabBar(
           
            labelColor: Colors.black,
            controller: tapController,
            tabs: const [
              Tab(
                text: "Bce",
              ),
              Tab(
                text: "Платежи",
              ),
              Tab(
                text: "Пополнение",
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(controller: tapController, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 58,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ]),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 58,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(color: Colors.grey, blurRadius: 3)
                                ]),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                              height: 58,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: const [
                                    BoxShadow(color: Colors.grey, blurRadius: 3)
                                  ]),
                              child: const ExpansionTile(
                                title: Text("Po date"),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 4,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  //  width: 390,
                                  // height: 100,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 214, 211, 211),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 1,
                                            blurRadius: 2)
                                      ]),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            "Услуги фотографа",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          SizedBox(
                                            width: 90,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              "06:32  Сегодня",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Container(
                                              height: 18,
                                              child: const Image(
                                                  image: NetworkImage(
                                                      "https://turonbank.uz/bitrix/templates/main/images/cards/payments/payme.png")),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 140, bottom: 15),
                                            child: Text("****4456"),
                                          ),
                                          SizedBox(
                                            width: 65,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 15),
                                            child: Text("1 200 500",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.white54,
                  child: Center(
                    child: Text('empty'),
                  )),
              const Tab(text: "Cabins"),
            ]),
          )
        ]),
      ],
    );
  }
}
