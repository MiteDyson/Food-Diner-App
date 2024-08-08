import 'food.dart';
import 'cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:core';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Burger",
      description:
          "A Jucy patty with meled cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/classic_burger.png",
      price: 199,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Cheesy fries", price: 129),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Fries Medium", price: 120),
        Addon(name: "Extra cheese dip ", price: 20),
      ],
    ),

    Food(
      name: "Bacon Cheese Burger",
      description:
          "A juicy patty with crispy bacon, melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/bacon_cheese_burger.png",
      price: 249,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra bacon", price: 30),
        Addon(name: "Cheesy fries", price: 129),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Fries Medium", price: 120),
        Addon(name: "Extra cheese dip", price: 20),
      ],
    ),

    Food(
      name: "Garden Burger",
      description:
          "A fresh veggie patty with melted Swiss cheese, lettuce, tomato, and avocado spread.",
      imagePath: "lib/images/burgers/garden_burger.png",
      price: 179,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra avocado", price: 25),
        Addon(name: "Cheesy fries", price: 129),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Fries Medium", price: 120),
        Addon(name: "Extra cheese dip", price: 20),
      ],
    ),

    Food(
      name: "Onion Ring Burger",
      description:
          "A juicy patty topped with crispy onion rings, melted cheddar, lettuce, and BBQ sauce.",
      imagePath: "lib/images/burgers/onion_ring_burger.png",
      price: 219,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra onion rings", price: 25),
        Addon(name: "Cheesy fries", price: 129),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Fries Medium", price: 120),
        Addon(name: "Extra cheese dip", price: 20),
      ],
    ),

    Food(
      name: "Veggie Burger",
      description:
          "A delicious veggie patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/veggie_burger.png",
      price: 189,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Cheesy fries", price: 129),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Fries Medium", price: 120),
        Addon(name: "Extra cheese dip", price: 20),
      ],
    ),

    //salads
    Food(
      name: "Cammesa Salad",
      description:
          "A fresh mix of greens, cherry tomatoes, olives, feta cheese, and a light vinaigrette.",
      imagePath: "lib/images/salads/camesa_salad.png",
      price: 149,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 20),
        Addon(name: "Grilled chicken", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic bread", price: 40),
        Addon(name: "Extra olives", price: 20),
      ],
    ),

    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, croutons, parmesan cheese, and Caesar dressing.",
      imagePath: "lib/images/salads/ceasar_salad.png",
      price: 129,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra parmesan", price: 20),
        Addon(name: "Grilled chicken", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic bread", price: 40),
        Addon(name: "Extra croutons", price: 15),
      ],
    ),

    Food(
      name: "Egg Salad",
      description:
          "A classic blend of chopped eggs, mayonnaise, and mustard, served on a bed of lettuce.",
      imagePath: "lib/images/salads/egg_salad.png",
      price: 99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra egg", price: 10),
        Addon(name: "Grilled chicken", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic bread", price: 40),
        Addon(name: "Extra mayo", price: 15),
      ],
    ),

    Food(
      name: "Greek Salad",
      description:
          "A refreshing mix of cucumbers, tomatoes, red onions, olives, and feta cheese, with olive oil dressing.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 139,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra feta", price: 20),
        Addon(name: "Grilled chicken", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic bread", price: 40),
        Addon(name: "Extra olives", price: 20),
      ],
    ),

    Food(
      name: "Vegan Salad",
      description:
          "A hearty mix of quinoa, chickpeas, avocado, cherry tomatoes, and a lemon tahini dressing.",
      imagePath: "lib/images/salads/vegan_salad.png",
      price: 159,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra avocado", price: 25),
        Addon(name: "Grilled tofu", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic bread", price: 40),
        Addon(name: "Extra chickpeas", price: 20),
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Crispy garlic bread with a buttery garlic spread, perfect for any meal.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 40,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra garlic butter", price: 10),
        Addon(name: "Cheese topping", price: 20),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Extra herbs", price: 5),
      ],
    ),

    Food(
      name: "Grilled Cheese",
      description:
          "A classic grilled cheese sandwich with melted cheddar between two slices of toasted bread.",
      imagePath: "lib/images/sides/grilled_sheese_side.png",
      price: 60,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Tomato soup", price: 50),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Extra butter", price: 10),
      ],
    ),

    Food(
      name: "Loaded Fries",
      description:
          "Crispy fries loaded with melted cheese, bacon bits, and green onions.",
      imagePath: "lib/images/sides/loaded_fries_side.png",
      price: 129,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Extra bacon", price: 30),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Ranch dip", price: 20),
      ],
    ),

    Food(
      name: "Onion Rings",
      description:
          "Golden, crispy onion rings, fried to perfection and served with a side of dipping sauce.",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 70,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra dipping sauce", price: 15),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic aioli", price: 20),
      ],
    ),

    Food(
      name: "Pizza Side",
      description: "A small personal pizza with your choice of toppings.",
      imagePath: "lib/images/sides/pizza_side.png",
      price: 99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Pepperoni", price: 25),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Garlic dip", price: 20),
      ],
    ),

    Food(
      name: "Poutine",
      description:
          "Classic Canadian dish with fries, cheese curds, and savory gravy.",
      imagePath: "lib/images/sides/poutine_side.png",
      price: 110,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese curds", price: 30),
        Addon(name: "Extra gravy", price: 20),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    Food(
      name: "Steak Side",
      description:
          "A small portion of juicy, grilled steak, perfect as a side or light meal.",
      imagePath: "lib/images/sides/steak_side.png",
      price: 150,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra sauce", price: 25),
        Addon(name: "Garlic butter", price: 20),
        Addon(name: "Coke can", price: 80),
        Addon(name: "Side salad", price: 50),
      ],
    ),

    //desserts
    Food(
      name: "Pancake Dessert",
      description:
          "Fluffy pancakes served with a drizzle of syrup, fresh berries, and a dollop of whipped cream.",
      imagePath: "lib/images/desserts/pancake_dessert.png",
      price: 80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra syrup", price: 10),
        Addon(name: "Extra berries", price: 20),
        Addon(name: "Ice cream scoop", price: 30),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    Food(
      name: "Caramel Custard",
      description:
          "Rich and creamy custard topped with a layer of caramel sauce.",
      imagePath: "lib/images/desserts/caramel_custard_dessert.png",
      price: 70,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra caramel", price: 10),
        Addon(name: "Whipped cream", price: 15),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    Food(
      name: "Cheesecake",
      description:
          "A slice of classic cheesecake with a graham cracker crust and a hint of vanilla.",
      imagePath: "lib/images/desserts/cheesecake_dessert.png",
      price: 90,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Berry topping", price: 20),
        Addon(name: "Whipped cream", price: 15),
        Addon(name: "Extra crust", price: 10),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    Food(
      name: "Ice Cream Sundae",
      description:
          "A classic sundae with vanilla ice cream, chocolate sauce, nuts, and a cherry on top.",
      imagePath: "lib/images/desserts/icecream_sundae_dessert.png",
      price: 60,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate sauce", price: 10),
        Addon(name: "Sprinkles", price: 5),
        Addon(name: "Whipped cream", price: 15),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    Food(
      name: "Macarons",
      description:
          "A selection of delicate macarons with a variety of flavors.",
      imagePath: "lib/images/desserts/macroons_dessert.png",
      price: 100,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra macarons", price: 30),
        Addon(name: "Whipped cream", price: 15),
        Addon(name: "Coke can", price: 80),
      ],
    ),

    //drinks
    Food(
      name: "Blue Lagoon",
      description:
          "A refreshing blend of blue curaçao, lemonade, and vodka, served over ice.",
      imagePath: "lib/images/drinks/blue_lagoon_drink.png",
      price: 250,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra shot", price: 50),
        Addon(name: "Lemon slice", price: 10),
        Addon(name: "Cherry on top", price: 20),
      ],
    ),

    Food(
      name: "Cherry Drink",
      description:
          "A sweet and tangy cherry-flavored drink with a hint of lime, served chilled.",
      imagePath: "lib/images/drinks/cherry_drink.png",
      price: 220,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cherries", price: 30),
        Addon(name: "Lime wedge", price: 10),
        Addon(name: "Mint leaves", price: 20),
      ],
    ),

    Food(
      name: "Iced Tea",
      description:
          "A classic iced tea, brewed to perfection and served over ice with a lemon wedge.",
      imagePath: "lib/images/drinks/iced_tea_drink.png",
      price: 200,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra lemon", price: 10),
        Addon(name: "Sweetener", price: 10),
        Addon(name: "Mint leaves", price: 20),
      ],
    ),

    Food(
      name: "Mohito",
      description:
          "A refreshing mojito with fresh mint, lime, sugar, white rum, and soda water.",
      imagePath: "lib/images/drinks/mohito_drink.png",
      price: 270,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra mint", price: 15),
        Addon(name: "Extra lime", price: 15),
        Addon(name: "Extra rum", price: 50),
      ],
    ),

    Food(
      name: "Piña Colada",
      description:
          "A tropical blend of rum, coconut cream, and pineapple juice, served with a pineapple slice.",
      imagePath: "lib/images/drinks/pinia_colada_drink.png",
      price: 280,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra coconut cream", price: 20),
        Addon(name: "Pineapple slice", price: 15),
        Addon(name: "Extra rum", price: 50),
      ],
    ),
  ];

// list of food menu
  final List<CartItem> _cart = [];
// delivery address(which user can change / update )
  String _deliveryAddress = '99 bollywood MH ';

  /*

G E T T E R S

*/

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  
    O P E R A T I O  N S 

  */

//add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item elaready with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;
      // check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
// if the item already exists increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise add na new cart item
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

//get total price of the cart

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

  // get total number of items in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// Upedate delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*

    H E L P E R S

  */
// generate a reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Reciept.");
    receipt.writeln();
    // format the date to include seconds only
    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name}- ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("   Add-ons:${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items:${getTotalItemCount()}");
    receipt.writeln("Total Price :${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to :$deliveryAddress");
    return receipt.toString();
  }

// format double value to money
  String _formatPrice(double price) {
    return "\u{20B9} ${price.toStringAsFixed(2)}";
  }

// format list of items into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(",");
  }
}
