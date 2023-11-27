import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:panucci_delivery/controller/cardapio.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({Key? key, required this.searchTextController}) : super(key: key);
  final TextEditingController searchTextController;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final c = Get.put(CardapioControler());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        onChanged: (String value) {
          setState(() {
            c.pesquisarPorComida(value);
          });
        },
        controller: widget.searchTextController,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(8.0),
          constraints: BoxConstraints(maxHeight: 45),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          hintText: "Buscar um item",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
