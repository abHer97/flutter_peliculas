import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cines'),
          centerTitle: false,
          backgroundColor: Colors.indigoAccent,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Container(
          child: Column(
            children: [_swiperTarjetas()],
          ),
        ));
  }

  Widget _swiperTarjetas() {
    return Container(
      width: double.infinity,
      height: 300.0,
      padding: EdgeInsets.only(top: 10.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "http://via.placeholder.com/350x150",
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        layout: SwiperLayout.STACK,
        itemWidth: 200.0,
        // pagination: SwiperPagination(),
        // control: SwiperControl(),
      ),
    );
  }
}
