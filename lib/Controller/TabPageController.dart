import 'package:flutter/material.dart';
import 'package:latihan/Page/LuasLayang.dart';
import 'package:latihan/Page/LuasLingkaran.dart';
import 'package:latihan/Page/LuasPersegi.dart';
import 'package:latihan/Page/LuasPersegiPanjang.dart';
import 'package:latihan/Page/LuasSegitiga.dart';

class TabPageController extends StatefulWidget {
  const TabPageController({Key? key}) : super(key: key);

  @override
  State<TabPageController> createState() => _TabPageControllerState();
}

class _TabPageControllerState extends State<TabPageController> {
  int _currentIndex = 1; // Indeks tab yang terpilih

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kalkulator Bangun Datar"),
          backgroundColor: Color(0xFF97FFF4),
        ),
        body: TabBarView(
          children: const <Widget>[
            LuasSegitiga(),
            LuasPersegi(),
            LuasPersegiPanjang(),
            LuasLingkaran(),
            LuasLayang(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color(0xFF97FFF4)
          ),
          child: TabBar(
            onTap: (index) {
              setState(() {
                _currentIndex = index; // Perbarui indeks saat tab diklik
              });
            },
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: _currentIndex == 0 ? Colors.yellow : Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.rectangle,
                  color: _currentIndex == 1 ? Colors.green : Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.aspect_ratio,
                  color: _currentIndex == 2 ? Colors.yellow : Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.circle,
                  color: _currentIndex == 3 ? Colors.green : Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                  color: _currentIndex == 4 ? Colors.yellow : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
