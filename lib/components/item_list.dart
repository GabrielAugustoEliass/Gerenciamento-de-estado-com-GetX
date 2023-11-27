import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:panucci_delivery/components/contador.dart';
import 'package:panucci_delivery/controller/cardapio.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key, required this.categoria}) : super(key: key);
  final String categoria;

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  final c = Get.put(CardapioControler());

  @override
  void initState() {
    super.initState();
    setState(() {
      c.listaFazia = List.from(c.todosOsItems);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0.1, 16, 32),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 150),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: const Color(0xFFF6F6F6),
              elevation: 0,
              clipBehavior: Clip.hardEdge,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 134),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image(
                      image: AssetImage(c.listaFazia[index].uri),
                      width: double.infinity,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              c.listaFazia[index].nome,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                                "R\$ ${c.listaFazia[index].preco.toStringAsFixed(2)}"),
                          ),
                          const Contador(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: c.listaFazia.length,
        ),
      ),
    );
  }
}
