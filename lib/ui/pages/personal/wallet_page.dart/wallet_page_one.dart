import 'package:flutter/material.dart';

class WalletPageOne extends StatefulWidget {
  const WalletPageOne({super.key});

  @override
  State<WalletPageOne> createState() => _WalletPageOneState();
}

class _WalletPageOneState extends State<WalletPageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text('Введите сумму пополнения (сум)'),
        SizedBox(height: 20,),
        Container(
          child:TextField(
            decoration: InputDecoration(
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
             )
            ),
          ),
        ),
        SizedBox(height: 20,),
        Text('Выберите платежную систему'),
         SizedBox(height: 20,),
         ExpansionTile(
          textColor: Colors.black,
          collapsedTextColor: Colors.black,
          collapsedIconColor: Colors.green,
          iconColor: Colors.green,
          title: Text('Click'),
          
         children: [
          ListTile(title: Text('Humo'),),
          ListTile(title: Text('AnorBank'),),
          ListTile(title: Text('Uzcard'),),
         ],),
         SizedBox(height: 20,),
         Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Пополнить Кошелек')),
         )

      ],
    );
  }
}