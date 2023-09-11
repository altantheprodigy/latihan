import 'package:get/get.dart';

class LuasController extends GetxController {
  final count = 0.obs; // var
  increment() => count.value++; // method

  final hasilLuasSegitiga = RxDouble(0.0);
  final hasilLuasPersegi = RxDouble(0.0);
  final hasilLuasPersegiPanjang = RxDouble(0.0);
  final hasilLuasLingkaran = RxDouble(0.0);
  final hasilLuasLayang = RxDouble(0.0);

  luasSegitiga(double alas, double tinggi){
    hasilLuasSegitiga.value = 0.5 * alas * tinggi;
  }

  luasPersegi(double sisi){
    hasilLuasPersegi.value = sisi * sisi;
  }

  luasPersegiPanjang(double Panjang, double Lebar){
    hasilLuasPersegiPanjang.value = Panjang * Lebar;
  }

  luasLingkaran(double rusuk){
    hasilLuasLingkaran.value = rusuk * rusuk * 3.14;
  }

  luasLayang(double d1, double d2){
    hasilLuasLayang.value = d1 * d2 * 0.5;
  }
}