import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
     //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      InkWell(
        onTap: (() {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30),)
            ),
            context: context, builder: (BuildContext contex){
            return Container(
             
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Добавление фото'),
                     SizedBox(height: 20,),
                    Text('Сделайте фото вашей работы, \ или загрузите его из галереи'),
                    SizedBox(height: 40,),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Камера')),),
                      
                    ),
                      SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Загрузить фото')),),
                      
                    )
                  ],
                  
                ),
              ),
            );
          });
        }),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Добавить фото', style: TextStyle(fontWeight: FontWeight.bold),)),
        ),
      )
      ],

    )
    ;
  }
}