import 'package:flutter/material.dart';
import 'package:moreno0393/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Inovatech Irvin0393',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Color(0xffc8c8e6),
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Color(0xff122fae),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Pedidos', count: 2),
                    TabItem(title: 'Ventas', count: 6),
                    TabItem(title: 'Clientes', count: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
                child: Text(
              'Pedidos de la Pagina',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text('Ventas de la Pagina',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
            Center(
                child: Text('Clientes de la Pagina',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
