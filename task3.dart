// Task: Product Management System

// Create a simple product management system using Dart Collections and Collection Methods.

// 1. Create a Product class

// Create a class called "Product" with the following properties:

// - "id" → int
// - "name" → String
// - "price" → double
// - "category" → String
// - "isAvailable" → bool


class Product {
  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });
}



void main() {
// ---

// 2. Create a List of Products

// Create a list containing at least 5 products with different categories and availability status.

List<Product> products = [
  Product(
    id: 1,
    name: "Laptop",
    price: 1500.0,
    category: "Electronics",
    isAvailable: true,
  ),
  Product(
    id: 2,
    name: "Book",
    price: 20.0,
    category: "Education",
    isAvailable: true,
  ),
  Product(
    id: 3,
    name: "Smartphone",
    price: 800.0,
    category: "Electronics",
    isAvailable: false,
  ),
  Product(
    id: 4,
    name: "Headphones",
    price: 100.0,
    category: "Electronics",
    isAvailable: true,
  ),
  Product(
    id: 5,
    name: "Chocolate",
    price: 5.0,
    category: "Food",
    isAvailable: true,
  ),
];


// ---

// Requirements:

// 1. Filter Available Products

// Using "where()", get all products that are currently available.

List<Product> availableProducts = products.where((product) => product.isAvailable).toList();

// ---

// 2. Extract Product Names

// Using "map()", create a new list containing only the product names.

List<String> productNames = products.map((product) => product.name).toList();

// ---

// 3. Get Available Electronics Products

// Using "where()" and "map()", get the names of all available products from the "Electronics" category.

List<String> availableElectronicsNames = products
    .where((product) => product.isAvailable && product.category == "Electronics")
    .map((product) => product.name)
    .toList();

// ---

// 4. Calculate Total Price

// Using "fold()", calculate the total price of all products.
double totalPrice = products.fold(0.0, (sum, product) => sum + product.price);

// ---

// 5. Calculate Available Products Total

// Using "where()" and "fold()", calculate the total price of only available products.
double availableProductsTotal = products
    .where((product) => product.isAvailable)
    .fold(0.0, (sum, product) => sum + product.price);

// ---

// 6. Check Product Availability

// Using "any()", check if there is any product with a price greater than 20000.

Product expensiveProduct = products.any((product) => product.price > 20000) ? products.firstWhere((product) => product.price > 20000) : Product(id: 0, name: "No Product", price: 0.0, category: "None", isAvailable: false);

// ---

// 7. Validate Products

// Using "every()", check if all products have a price greater than 100.

bool allProductsAbove100 = products.every((product) => product.price > 100);

// ---

// 8. Find a Product

// Using "firstWhere()", find the first product that belongs to the "Electronics" category.\

Product firstElectronicsProduct = products.firstWhere((product) => product.category == "Electronics", orElse: () => Product(id: 0, name: "No Product", price: 0.0, category: "None", isAvailable: false));

// ---

// 9. Sort Products

// Using "sort()", sort the products from the cheapest to the most expensive.
  products.sort((a, b) => a.price.compareTo(b.price));
  for (var product in products) {
    print("${product.name}: \$${product.price}");
  }


// 10. Remove Duplicate Categories

// Create a list of categories:

// [
//   "Electronics",
//   "Education",
//   "Electronics",
//   "Food"
// ]

// Convert it into a "Set" to remove duplicated categories.

// Expected result:

// {
//   "Electronics",
//   "Education",
//   "Food"
// }

  List<String> categories = [
    "Electronics",
    "Education",
    "Electronics",
    "Food"
  ];

  Set<String> uniqueCategories = categories.toSet();
  print(uniqueCategories);


//print statements for all the above requirements
  print("Available Products: ${availableProducts.map((product) => product.name).toList()}");
  print("Product Names: $productNames");
  print("Available Electronics Products: $availableElectronicsNames");
  print("Total Price of All Products: \$${totalPrice.toStringAsFixed(2)}");
  print("Total Price of Available Products: \$${availableProductsTotal.toStringAsFixed(2)}");
  print("Expensive Product: ${expensiveProduct.name}");
  print("All Products Above \$100: $allProductsAbove100");
  print("First Electronics Product: ${firstElectronicsProduct.name}");
}


