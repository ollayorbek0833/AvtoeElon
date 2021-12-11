import 'package:cars/Screens/detail_screens.dart';
import 'package:cars/models/car_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {Key? key, required this.model, required this.image, required this.price, required this.index, required this.data})
      : super(key: key);
  final String model;
  final String image;
  final String price;
  final int index;
  final String data;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model),
        actions: [
          IconButton(
              onPressed: () {
                showMyDialog();
              },
              icon: const Icon(Icons.share_outlined)),
          IconButton(
              onPressed: () {
                showMyDialog();
              },
              icon: const Icon(Icons.star_outlined)),
        ],
      ),
      backgroundColor: const Color(0xffD9D9D9),
      body: ListView(
        children: [
          Image.network(
            widget.image,
            scale: 0.5,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.white,
            child: Row(
              children: [
                Text(widget.price + " mln   "),
                OutlinedButton(
                  onPressed: () {
                    showMyDialog();
                  },
                  child: Row(
                    children: const [
                      Text("So'm"),
                      Icon(CupertinoIcons.arrow_right_arrow_left_square)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Manzil",textScaleFactor: 1.3, style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Kuzov",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Uzatish qutisi",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Ranggi",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Yukxona Sig'imi",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Yoqilg'i sarfi",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Xavsizlik yostiqchalari soni",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(cars(widget.index).location, textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).kuzov, textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).uzatishQutisi, textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).ranggi, textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).yukxona.toString() + " l", textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).yoqilgi.toString() + "  l / 100km", textScaleFactor: 1.3,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(pages(widget.index).xavfSizlik.toString() + " dona", textScaleFactor: 1.3,),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Qo'shimcha ma'lumotlar", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 80),
                  child: AutoSizeText(
                    widget.data
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.4,
              child: ElevatedButton(
                child: const Text("Yozish"),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: (){showMyDialog2();},
              ),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.4,
              child: ElevatedButton(onPressed: (){showMyDialog3();}, child: const Text("Qo'ng'iroq qilish")),
            ),
          ],
        ),
      ),
    );
  }

  Future showMyDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text("Kamchilik"),
              content: const Text("Bu funksiya hozircha qo'shilmagan"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context, "Ok");
                    },
                    child: const Text("Ok"))
              ],
            ));
  }

  Future showMyDialog2() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text("Diqqat! Shu raqamga yozasiz"),
          content: const Text("+998 97-791-08-33"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, "Ok");
                },
                child: const Text("Ok"))
          ],
        ));
  }

  Future showMyDialog3() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text("Diqqat! Shu raqamga qo'ng'iroq qilasiz"),
          content: const Text("+998 97-791-08-33"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context, "Ok");
                },
                child: const Text("Ok"))
          ],
        ));
  }

}