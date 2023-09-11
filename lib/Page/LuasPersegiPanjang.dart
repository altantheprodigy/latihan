import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/LuasController.dart';

class LuasPersegiPanjang extends StatefulWidget {
  const LuasPersegiPanjang({Key? key}) : super(key: key);

  @override
  State<LuasPersegiPanjang> createState() => _LuasPersegiPanjangState();
}

class _LuasPersegiPanjangState extends State<LuasPersegiPanjang> {

  TextEditingController ctrPanjang = TextEditingController();
  TextEditingController ctrLebar = TextEditingController();
  final LuasController controller = Get.put(LuasController());

  Widget myTextField(TextEditingController cth, String myLabel) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: cth,
        decoration: InputDecoration(
          labelText: myLabel,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.blue),
          ),

        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi Panjang"),
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
                    Padding(padding: EdgeInsets.all(10)),
                    Image(
                      image: AssetImage('images/pp.png'),
                      height: 200,
                      width: 150,
                    ),
                    Text(
                      "Panjang * Lebar",
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
                myTextField(ctrPanjang, "Panjang"),
                myTextField(ctrLebar, "Lebar"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () =>
                      controller.luasPersegiPanjang(
                        double.parse(ctrPanjang.text.toString()),
                        double.parse(ctrLebar.text.toString())),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF97FFF4), // Warna latar belakang tombol
                  ),
                  child: Text("Hitung Luas"),
                ),
                // tempel hasil hitung nya
                Obx(
                      () =>
                      Text(
                        'Hasil: ${controller.hasilLuasPersegiPanjang.value}',
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