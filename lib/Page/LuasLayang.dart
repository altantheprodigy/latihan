import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/LuasController.dart';


class LuasLayang extends StatefulWidget {
  const LuasLayang({Key? key}) : super(key: key);

  @override
  State<LuasLayang> createState() => _LuasLayangState();
}

class _LuasLayangState extends State<LuasLayang> {


  TextEditingController ctrD1 = TextEditingController();
  TextEditingController ctrD2 = TextEditingController();
  final LuasController controller = Get.put(LuasController());


  Widget myTextField(TextEditingController ctr, String myLabel){
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: ctr,
        decoration: InputDecoration(
          labelText: myLabel,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Layang-Layang"),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 310,
              height: 130,
              decoration: BoxDecoration(
                color: Color(0xFF97FFF4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                   Image(
                      image: AssetImage('images/layang.png'),
                      height: 200,
                      width: 200,
                    ),

                    Text(
                      "(D1 * D2)/2",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                // alas
                myTextField(ctrD1, "D1"),
                myTextField(ctrD2, "D2"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => controller.luasLayang(
                      double.parse(ctrD1.text.toString()),
                      double.parse(ctrD2.text.toString())),

                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF97FFF4), // Warna latar belakang tombol
                  ),
                  child: Text("Hitung Luas"),
                ),
                // tempel hasil hitung nya
                Obx(
                      () => Text(
                    'Hasil: ${controller.hasilLuasLayang.value}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }
}
