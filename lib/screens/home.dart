import 'package:flutter/material.dart';
import 'package:panucci_delivery/components/item_list.dart';
import '../components/categoria_text.dart';
import '../components/search_input.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.grey,
              ),
            )
          ],
          title: const Text(
            'Refeições do Dia',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SearchInput(
                searchTextController: searchTextController,
              ),
            ),
            const SliverToBoxAdapter(
              child: CategoriaText(
                titulo: "Mais comprados",
              ),
            ),
             const SliverToBoxAdapter(
              child: ItemList(
                categoria: "mais comprados",
              ),
            ),
             const SliverToBoxAdapter(
              child: CategoriaText(
                titulo: "Para o almoço",
              ),
            ),
             const SliverToBoxAdapter(
              child: ItemList(
                categoria: "para o almoço",
              ),
            ),
             const SliverToBoxAdapter(
              child: CategoriaText(
                titulo: "Para dividir",
              ),
            ),
             const SliverToBoxAdapter(
              child: ItemList(
                categoria: "para dividir",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
