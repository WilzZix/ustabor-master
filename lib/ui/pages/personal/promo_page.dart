import 'package:flutter/material.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {

  List dropDownItems = ['Выбрать категорию'];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            height: 120,
            //  width: double.infinity,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/Rectangle.png',
                    fit: BoxFit.contain,
                    height: 120,
                    width: 140,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                          'Посмотрите подробное руководство по продвижению ваших проектов'))
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Выберите категорию для продвижения'),
          SizedBox(
            height: 20,
          ),
          DropdownButton(
            iconSize: 38,
            items: [
              DropdownMenuItem(
                  child: Text(
                    'Выбрать категорию',
                  ))
            ],
            onChanged: null,
            isExpanded: true,
            iconDisabledColor: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Отправить на модерацию')),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('Продвигаемые категории'),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text('10'),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text('Фасадные работы'),
                            )),
                        Text('на модерации')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Цена за клик:'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('5 000 sum')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

        ]);
  }
}
