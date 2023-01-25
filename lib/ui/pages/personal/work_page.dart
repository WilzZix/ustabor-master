import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      InkWell(
        onTap: (() {
          showModalBottomSheet(
            backgroundColor: Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8),)
            ),
            context: context,
             builder: (BuildContext contex){
            return Container(
              child: Column(
                
                children: [
                  SizedBox(height: 8.h,),
                  Center(
                    child: Container(
                      height: 4.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                        color: Color(0xffD8D8D8),
                        borderRadius: BorderRadius.circular(2)
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      height: 49.h,
                      width: 351.w,
                     // decoration: BoxDecoration(color: Colors.red),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         SizedBox(width: 12.w,),
                          Center(child: Text('Добавление фото', style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w400),)),
                          Container(
                          margin: EdgeInsets.only(bottom: 10),
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFf),
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                 

                                )
                              ]
                            ),
                            child: InkWell(
                              onTap: ((
                                
                              ) {
                                setState(() {
                                  
                                });
                              }),
                              child: Center(
                                child: Icon(Icons.clear,),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                   SizedBox(height: 24.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Text('Сделайте фото вашей работы, или загрузите его из галереи', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),),
                  ),
                  SizedBox(height: 32.h,),
                  InkWell(
                    onTap: (){
                    },
                    child: Container(
                      height: 48.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                      color: Color(0xff63C74D),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text('Камера', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: Color(0xffFFFFFF)
                    ))),),
                    
                  ),
                    SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                    },
                    child: Container(
                      height: 48.h,
                      width: 343.w,
                      decoration: BoxDecoration(
                 
                      border: Border.all(color: Color(0xff63C74D), ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text('Загрузить фото', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: Color(0xff63C74D)
                    ))),),
                    
                  )
                ],
                
              ),
            );
          });
        }),
        child: Container(
          height: 48.h,
          width: 343.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Добавить фото', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp, color: Color(0xff63C74D))),
        ),
      ))
      ],

    )
    ;
  }
}