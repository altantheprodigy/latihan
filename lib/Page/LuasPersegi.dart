import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/LuasController.dart';

class LuasPersegi extends StatefulWidget {
  const LuasPersegi({Key? key}) : super(key: key);

  @override
  State<LuasPersegi> createState() => _LuasPersegiState();
}

class _LuasPersegiState extends State<LuasPersegi> {

  TextEditingController ctrSisi = TextEditingController();
  final LuasController controller = Get.put(LuasController());

  Widget myTextField(TextEditingController ctf, String myLabel){
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: ctf,
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
        title: Text("Luas Persegi"),
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
                    Icon(
                      Icons.square, // Ikon persegi
                      size: 130,
                      color: Color(0xFF7091F5),
                    ),
                    Text(
                      "Sisi * Sisi",
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
                myTextField(ctrSisi, "Alas"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => controller.luasPersegi(
                    double.parse(ctrSisi.text.toString()),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF97FFF4), // Warna latar belakang tombol
                  ),
                  child: Text("Hitung Luas"),
                ),
                // tempel hasil hitung nya
                Obx(
                      () => Text(
                    'Hasil: ${controller.hasilLuasPersegi.value}',
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
