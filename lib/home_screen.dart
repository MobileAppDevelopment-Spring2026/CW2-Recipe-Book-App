import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = [
      {
        'name': 'Lasagna',
        'image': 'assets/lasagna.jpg',
        'ingredients': [
          'Lasagna noodles',
          'Ground beef',
          'Tomato sauce',
          'Ricotta cheese',
          'Italian seasoning'
        ],
        'instructions':
        'Step 1: Preheat oven to 375°F\nStep 2: In a separate bowl, mix ricotta cheese with beaten eggs\nStep 3: Repeat layers, ending with mozzarella and Parmesan cheese on top\nStep 4: Bake for 30-35 minutes until bubbly and golden\nStep 5: Let it cool for 10 minutes before serving'
      },
      {
        'name': 'Sushi Rolls',
        'image': 'assets/sushi_rolls.jpg',
        'ingredients': [
          'Sushi rice',
          'Nori seaweed',
          'Fish fillets (salmon, tuna)',
          'Vegetables (cucumber, avocado, carrot)',
          'Soy sauce',
          'Wasabi',
          'Pickled ginger'
        ],
        'instructions':
        'Step 1: Cook sushi rice according to package instructions\nStep 2: Lay a sheet of nori on a bamboo rolling mat\nStep 3: Spread rice evenly on the nori, leaving a border at the top\nStep 4: Arrange fish and vegetables on the rice\nStep 5: Roll the sushi tightly using the bamboo mat\nStep 6: Slice the roll into bite-sized pieces\nStep 7: Serve with soy sauce, wasabi, and pickled ginger'
      },
      {
        'name': 'Chicken Alfredo',
        'image': 'assets/chicken_alfredo.jpg',
        'ingredients': [
          'Fettuccine pasta',
          'Chicken breast',
          'Heavy cream',
          'Parmesan cheese',
          'Parsley'
        ],
        'instructions':
        'Step 1: Cook fettuccine pasta according to package instructions\nStep 2: Season chicken breast with salt and pepper, then grill or pan-fry until cooked through\nStep 3: Stir in heavy cream and Parmesan cheese, then simmer until thickened\nStep 4: Toss cooked pasta in the sauce until evenly coated\nStep 5: Serve with chopped parsley on top'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text(
          'Recipe Book App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipe['name'] as String,
                    ingredients: List<String>.from(recipe['ingredients'] as List),
                    instructions: recipe['instructions'] as String,
                  ),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  Image.asset(
                    recipe['image'] as String,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    right: 16,
                    child: Text(
                      recipe['name'] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black54,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
