import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  List addImges = [];
  List images = [
    'assets/Rectangle1.png',
    'assets/Rectangle2.png',
    'assets/Rectangle3.png',
  ];
  bool isChecked = false;
  List itemsName = [
    'Инфо',
    'Кошелек',
    'Промо',
    'Работы',
    'Отзывы',
    'Чат',
  ];
  List skilsName = [
    'Ремонт под ключ',
    'Гипсокартон',
    'Ванные комнаты',
    'Ванные комнаты',
    'Ванные комнаты',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('О мастере:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/iccity.svg',
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Узбекистан, Бухара',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text('10'),
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text('просмотров профиля',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text('10'),
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text('запросов контакта',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              'Ремонт под ключ. Выполняю ремонт под ключ: ванная комната под ключ, отделка стен и потолка, поклейка обоев, кладка кафеля и др. Дизайн интерьера помещений, офисов и домов, кухня на заказ.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          const SizedBox(
            height: 10,
          ),
          const Text('Специализация:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 10,
            crossAxisAlignment: WrapCrossAlignment.end,
            runAlignment: WrapAlignment.spaceBetween,
            children: [
              for (int i = 0; i < skilsName.length + 1; i++)
                i < skilsName.length
                    ? OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.only(
                              right: 5, left: 5, top: 0, bottom: 0),
                          elevation: 0,
                          backgroundColor: Colors.grey[300],
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                        ),
                        child: Text(
                          skilsName[i],
                          style: const TextStyle(color: Colors.grey),
                        ))
                    : Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ))))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('Показать все',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_right_outlined,
                size: 30,
                color: Color(0xff63C74D),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Услуги и цены:',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xffFFF0F0),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '☝️️  Только услуги с проставленными ценами будут видны заказчикам!',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 140,
            decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              'Сантехники',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: ((bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          })),
                      // SizedBox(width: 5,),
                      Row(
                        children: [
                          Text('Развести трубы'),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      DottedLine(direction: Axis.horizontal, lineLength: 50),
                      Row(
                        children: [
                          Text('от'),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 30,
                              width: 80,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('сўм')
                        ],
                      )
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 0,
              runSpacing: 0,
              crossAxisAlignment: WrapCrossAlignment.end,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                 for (int i = 0; i < images.length; i++)
                Container(
                  height: 160,
                  width: 190,
                  child: Image.asset(images[i]),
                )
              ],
            ),
          )
        ]);
  }
}
