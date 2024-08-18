import 'package:collection/collection.dart';
import 'package:deliveryapp/models/cart_item.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> menu = [
    // burgers
    Food(
      name: "Биг Чикен Бургер Чесночно-сливочный",
      description:
          "Большой бургер с нежным филе куриной грудки в хрустящей панировке, чесночно-сливочным соусом, сыром Эмменталь, сочным ломтичками помидора и свежим салатом на булочке с кунжутом.",
      imagePath: "lib/images/burgers/bigchicken.png",
      price: 289,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Сыр Эмменталь", price: 0.5),
        Addon(name: "Куриное филе", price: 0.5),
        Addon(name: "Помидор свежий", price: 0.5),
        Addon(name: "Салат", price: 0.5),
      ],
    ),

    Food(
      name: "Чикен Премьер Карри",
      description:
          "Сочная куриная котлета в хрустящей панировке, пряный соус Карри, ломтик сыр Чеддер, ароматный бекон, ломтик помидора, свежий салат и карамелизированная булочка с кунжутом.",
      imagePath: "lib/images/burgers/chicken.png",
      price: 183,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Бекон", price: 0.5),
        Addon(name: "Сыр", price: 0.5),
        Addon(name: "Куриная котлета", price: 0.5),
        Addon(name: "Помидор свежий", price: 0.5),
        Addon(name: "Салат", price: 0.5),
      ],
    ),

    Food(
      name: "Чикен Хит Карри",
      description:
          "Сочная куриная котлета в хрустящей панировке, пряный соус Карри, свежий салат и карамелизированная булочка с кунжутом.",
      imagePath: "lib/images/burgers/carry.png",
      price: 183,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Куриная котлета", price: 0.5),
        Addon(name: "Салат", price: 0.5),
      ],
    ),

    Food(
      name: "Римский бургер",
      description:
          "По-итальянски вкусный бургер с сочной говяжьей котлетой, руколой, помидором, двумя ломтиками сыра эмменталь, свежим луком, пикантным соусом, и всё это на вкуснейшей сырной булочке.",
      imagePath: "lib/images/burgers/roman.png",
      price: 275,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Сыр Эмменталь", price: 0.5),
        Addon(name: "Пикантный соус", price: 0.5),
        Addon(name: "Мясная котлета", price: 0.5),
        Addon(name: "Соль с Перцем", price: 0.5),
        Addon(name: "Лук свежий", price: 0.5),
        Addon(name: "Помидор свежий", price: 0.5),
        Addon(name: "Рукола", price: 0.5),
      ],
    ),

    Food(
      name: "Биг Спешиал Барбекю Бекон",
      description:
          "Неповторимый сандвич с большим рубленым бифштексом из 100% отборной говядины на большой булочке с кунжутом. Внутри свежие овощи, сыр эмменталь, ароматные ломтики бекона, соус с дымком и невороятный соус барбекю.",
      imagePath: "lib/images/burgers/bigspecial.png",
      price: 348,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Сыр Эмменталь", price: 0.5),
        Addon(name: "Бекон", price: 0.5),
        Addon(name: "Мясная котлета", price: 0.5),
        Addon(name: "Соус барбекю", price: 0.5),
        Addon(name: "Биг Спешиал соус", price: 0.5),
        Addon(name: "Помидор свежий", price: 0.5),
        Addon(name: "Салат", price: 0.5),
      ],
    ),

    // desserts
    Food(
      name: "Айс Де Люкс Папайя-манго",
      description:
          "Мороженое из натурального цельного молока с сочным тропическим топпингом с кусочками папайи и манго.",
      imagePath: "lib/images/desserts/lux.png",
      price: 135,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Топпинг Папайя-манго", price: 0.5),
      ],
    ),

    Food(
      name: "Пирожок Манго-кремчиз",
      description:
          "Хрустящий пирожок с начинкой из нежного сливочного сыра в сочетании со спелым манго.",
      imagePath: "lib/images/desserts/piece.png",
      price: 79,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),

    Food(
      name: "Тирамису",
      description:
          "Классический десерт с мягким кофейным бисквитом, нежным муссом со вкусом сыра маскарпоне и ароматным какао.",
      imagePath: "lib/images/desserts/tiramisu.png",
      price: 179,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),

    Food(
      name: "Мороженое Карамельное",
      description:
          "Мороженое из натурального цельного молока с добавкой карамельного наполнителя.",
      imagePath: "lib/images/desserts/caramel.png",
      price: 135,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Топпинг Шоколад", price: 35),
        Addon(name: "Топпинг Клубничный", price: 35),
      ],
    ),

    Food(
      name: "Вафельный рожок",
      description:
          "Классичесикое мороженое из натурального цельного молока в румяной хрустящей вафле",
      imagePath: "lib/images/desserts/iceCream.png",
      price: 48,
      category: FoodCategory.desserts,
      availableAddons: [],
    ),

    // drinks
    Food(
      name: "Молочный коктейль Папайя-манго",
      description:
          "Великолепно взбитый коктейль, приготовленный из нежнейшей молочной смеси и сиропа папайя-манго.",
      imagePath: "lib/images/drinks/milk.png",
      price: 129,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),

    Food(
      name: "Физз вишня",
      description:
          "Прохладительный газированный напиток со вкусом спелой вишни",
      imagePath: "lib/images/drinks/fizz.png",
      price: 112,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Лед", price: 0.5),
      ],
    ),

    Food(
      name: "Айс Кофе Лесной Орех",
      description:
          "Холодный кофейный напиток с молоком, сиропом Лесной орех и большим количеством льда",
      imagePath: "lib/images/drinks/iceCoffee.png",
      price: 159,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Сироп Карамельный", price: 40),
      ],
    ),

    Food(
      name: "Флэт Уайт",
      description:
          "Флэт Уайт - яркий, с насыщенным кофейным вкусом, молочный напиток на основе эспрессо.",
      imagePath: "lib/images/drinks/coffee.png",
      price: 135,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Сироп Карамельный", price: 40),
        Addon(name: "Дополнительное Молоко", price: 10),
        Addon(name: "Сироп Лесной орех", price: 40),
      ],
    ),

    Food(
      name: "Добрый Кола",
      description: "Прохладительный газированный напиток",
      imagePath: "lib/images/drinks/cola.png",
      price: 102,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),

    // salads
    Food(
      name: "Салат Цезарь",
      description:
          "Хрустящие листья салата айсберг, сочные томаты черри, тертый сыр пармезан и нежнейшие куриные стрипсы.",
      imagePath: "lib/images/salads/Ceaser.png",
      price: 202,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Соус Цезарь", price: 40),
      ],
    ),

    Food(
      name: "Салат Цезарь с креветками",
      description:
          "Хрустящие листья салата айсберг, сочные томаты черри, тертый сыр пармезан и жареные креветки в панировке.",
      imagePath: "lib/images/salads/CeaserK.png",
      price: 289,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Соус Цезарь", price: 40),
      ],
    ),

    Food(
      name: "Овощной салат",
      description:
          "Хрустящие листья салата Айсберг, сочные томаты черри и маслины.",
      imagePath: "lib/images/salads/vegetable.png",
      price: 159,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Соус Цезарь", price: 40),
      ],
    ),

    // sides
    Food(
      name: "Сырные Колечки Моцарелла",
      description:
          "Аппетитные колечки из тянущегося сыра Моцарелла в хрустящей панировке.",
      imagePath: "lib/images/sides/cheese.png",
      price: 200,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Соус Сырный", price: 40),
        Addon(name: "Соус Кисло-Сладкий", price: 40),
      ],
    ),

    Food(
      name: "Креветки",
      description:
          "Королевские креветки в хрустящей панировке. Еще аппетитнее с соусом 1000 островов. Легко. Изысканно. Вкусно.",
      imagePath: "lib/images/sides/krev.png",
      price: 308,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Соус Сырный", price: 40),
        Addon(name: "Соус Кисло-Сладкий", price: 40),
      ],
    ),

    Food(
      name: "Куриные крылышки",
      description:
          "Аппетитные куриные крылышки в пикантной, хрустящей панировке. Еще вкуснее с соусом Барбекю!",
      imagePath: "lib/images/sides/kril.png",
      price: 251,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Соус Сырный", price: 40),
        Addon(name: "Соус Кисло-Сладкий", price: 40),
      ],
    ),

    Food(
      name: "Наггетсы",
      description:
          "Наггетсы - это сочное 100% белое куриное мясо в хрустящей панировке со специами. Только натуральная курочка без искусственных красителей и ароматизаторов и без консервантов.",
      imagePath: "lib/images/sides/nag.png",
      price: 154,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Соус Сырный", price: 40),
        Addon(name: "Соус Кисло-Сладкий", price: 40),
      ],
    ),

    Food(
      name: "Стрипсы",
      description:
          "Сочная, нежная курица в хрустящей панировке. Попробуйте стрипсы из 100% белого мяса!",
      imagePath: "lib/images/sides/str.png",
      price: 234,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Соус Сырный", price: 40),
        Addon(name: "Соус Кисло-Сладкий", price: 40),
      ],
    ),
  ];

// user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = "123 Main Street, Anytown USA";

  /*
  
  G E T T E R S

   */

  List<Food> get getMenu => menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  
  O P E R A T I O N S

   */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if therre is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list pf selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clean cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*
  
  H E L P E R S

   */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: ${_deliveryAddress}");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
