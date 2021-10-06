import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/food_item.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);
  static const routeName = '/detailpage';

  @override
  Widget build(BuildContext context) {
    var items = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(title: Text(items.name),backgroundColor: Colors.purple,),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/${items.image}',
              fit: BoxFit.fill,
            ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ชื่อเมนู: ${items.name}',style: GoogleFonts.prompt(fontSize: 20.0),),
                     Text('ราคา: ${items.price} บาท',style: GoogleFonts.prompt(fontSize: 20.0),),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
