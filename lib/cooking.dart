import 'package:flutter/material.dart';

class FoodItem {
  final String name;
  final String cookingTime;
  final String recipe;

  FoodItem({required this.name, required this.cookingTime, required this.recipe});
}

class FoodListPage extends StatelessWidget {
  final List<FoodItem> foodItems = [
    FoodItem(
        name: 'Spaghetti Carbonara',
        cookingTime: '30 minutes',
        recipe: '1. Cook spaghetti according to package instructions.\n2. In a separate pan, cook bacon until crispy.\n3. In a bowl, whisk together eggs, parmesan cheese, and black pepper.\n4. Drain spaghetti and add to the pan with bacon. Remove from heat.\n5. Add egg mixture to the pan and stir until the eggs are cooked and the sauce is creamy.'
    ),
    FoodItem(
        name: 'Chicken Alfredo',
        cookingTime: '45 minutes',
        recipe: '1. Cook fettuccine according to package instructions.\n2. In a separate pan, cook chicken until no longer pink.\n3. In a saucepan, melt butter and add garlic. Cook for 1 minute.\n4. Add heavy cream and parmesan cheese to the saucepan. Cook until the cheese is melted and the sauce is thickened.\n5. Add cooked chicken to the sauce and stir.\n6. Serve the sauce over the fettuccine.'
    ),
    FoodItem(
        name: 'Beef Stroganoff',
        cookingTime: '1 hour',
        recipe: '1. Cook egg noodles according to package instructions.\n2. In a separate pan, cook beef until browned.\n3. Add onions and mushrooms to the pan with beef. Cook until softened.\n4. In a bowl, whisk together beef broth, sour cream, and flour.\n5. Add the sour cream mixture to the pan with beef and stir until the sauce is thickened.\n6. Serve the sauce over the egg noodles.'
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(foodItems[index].name),
              subtitle: Text('Cooking Time: ${foodItems[index].cookingTime}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodDetailPage(foodItem: foodItems[index])),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class FoodDetailPage extends StatelessWidget {
  final FoodItem foodItem;

  FoodDetailPage({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cooking Time: ${foodItem.cookingTime}'),
            SizedBox(height: 16.0),
            Text('Recipe:'),
            SizedBox(height: 8.0),
            Text(foodItem.recipe),
          ],
        ),
      ),
    );
  }
}