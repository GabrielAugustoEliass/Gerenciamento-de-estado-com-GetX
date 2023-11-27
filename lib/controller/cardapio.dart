import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class CardapioControler extends GetxController {
  RxList<Item> todosOsItems = <Item>[
    const Item("Chicken Salad", "mais comprados", 58.90,
        "assets/images/chicken-salad.png"),
    const Item("Chicken Tender", "mais comprados", 49.90,
        "assets/images/chicken-tender.png"),
    const Item("Cold Noodles", "para o almoço", 37.50,
        "assets/images/cold-noodles.png"),
    const Item("Hamburger Ink", "para o almoço", 48.50,
        "assets/images/hamburger-ink.png"),
    const Item("Lasagna", "para dividir", 55.00,
        "assets/images/lasagna-bolognese.jpg"),
    const Item("Shrimp 'n rice", "para dividir", 68.50,
        "assets/images/shrimp-n-rice.png"),
    const Item("Chicken Tortilla", "mais comprados", 35.50,
        "assets/images/chicken-tortilla.png"),
    const Item(
        "Coxinhas", "mais comprados", 15.00, "assets/images/coxinhas.png"),
    const Item("Fish 'n Salsa", "mais comprados", 45.50,
        "assets/images/fish-n-salsa.png"),
    const Item("Pamonha", "para o almoço", 10.00, "assets/images/pamonha.png"),
    const Item("Penne au sugo", "para o almoço", 25.00,
        "assets/images/penne-au-sugo.png"),
    const Item("Rice 'n Beans", "para dividir", 35.00,
        "assets/images/rice-n-beans.jpg"),
    const Item("Spagetti", "para dividir", 20.00, "assets/images/spagetti.png"),
    const Item("Steak Veggies", "mais comprados", 68.00,
        "assets/images/steak-veggies.png"),
    const Item("Tapioca Taco", "mais comprados", 25.00,
        "assets/images/tapioca-taco.jpg"),
  ].obs;

  List<Item> listaFazia = [];

  void pesquisarPorComida(String value) {
    if (value.isEmpty) {
      listaFazia = List.from(todosOsItems);
    } else {
      listaFazia = todosOsItems
          .where((e) => e.nome.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    update();
  }
}
