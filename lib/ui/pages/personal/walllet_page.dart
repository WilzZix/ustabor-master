import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Material(
                    color: Colors.green,
                    child: TabBar(
                      labelColor: Colors.white,
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: "Пополнение кошелька",
                        ),
                        Tab(
                          text: "Историятранзакций",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                    width: double.infinity,
                    child: TabBarView(controller: tabController, children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Введите сумму пополнения (сумму)",
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white54,
                                child: const TextField(
                                  keyboardType: TextInputType.name,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '2000',
                                      labelStyle:
                                          TextStyle(color: Colors.black)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Выберите платежную систему",
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.white54,
                                child: const TextField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'CLICk',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ))),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 390,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 19, 197, 25),
                                    borderRadius: BorderRadius.circular(13)),
                                child: const Center(
                                    child: Text(
                                  "Наполнить кошелек",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
