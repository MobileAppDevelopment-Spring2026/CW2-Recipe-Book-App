import '../models/recipe.dart';

const List<Recipe> recipes = [
  Recipe(
    name: 'Lasagna',
    image: 'assets/lasagna.jpg',
    ingredients: [
      'Lasagna noodles',
      'Ground beef',
      'Tomato sauce',
      'Ricotta cheese',
      'Italian seasoning'
    ],
    instructions:
        'Step 1: Preheat oven to 375°F\nStep 2: In a separate bowl, mix ricotta cheese with beaten eggs\nStep 3: Repeat layers, ending with mozzarella and Parmesan cheese on top\nStep 4: Bake for 30-35 minutes until bubbly and golden\nStep 5: Let it cool for 10 minutes before serving',
  ),
  Recipe(
    name: 'Sushi Rolls',
    image: 'assets/sushi_rolls.jpg',
    ingredients: [
      'Sushi rice',
      'Nori seaweed',
      'Fish fillets (salmon, tuna)',
      'Vegetables (cucumber, avocado, carrot)',
      'Soy sauce',
      'Wasabi',
      'Pickled ginger'
    ],
    instructions:
        'Step 1: Cook sushi rice according to package instructions\nStep 2: Lay a sheet of nori on a bamboo rolling mat\nStep 3: Spread rice evenly on the nori, leaving a border at the top\nStep 4: Arrange fish and vegetables on the rice\nStep 5: Roll the sushi tightly using the bamboo mat\nStep 6: Slice the roll into bite-sized pieces\nStep 7: Serve with soy sauce, wasabi, and pickled ginger',
  ),
  Recipe(
    name: 'Chicken Alfredo',
    image: 'assets/chicken_alfredo.jpg',
    ingredients: [
      'Fettuccine pasta',
      'Chicken breast',
      'Heavy cream',
      'Parmesan cheese',
      'Parsley'
    ],
    instructions:
        'Step 1: Cook fettuccine pasta according to package instructions\nStep 2: Season chicken breast with salt and pepper, then grill or pan-fry until cooked through\nStep 3: Stir in heavy cream and Parmesan cheese, then simmer until thickened\nStep 4: Toss cooked pasta in the sauce until evenly coated\nStep 5: Serve with chopped parsley on top',
  ),
  Recipe(
    name: 'Chocolate Brownies',
    image: 'assets/brownies.jpg',
    ingredients: [
      'All-purpose flour',
      'Cocoa powder',
      'Sugar',
      'Eggs',
      'Butter',
      'Vanilla extract',
      'Baking powder',
      'Salt'
    ],
    instructions:
        'Step 1: Preheat oven to 350°F\nStep 2: Melt butter and mix with cocoa powder\nStep 3: In another bowl, whisk eggs with sugar and vanilla extract\nStep 4: Combine wet and dry ingredients\nStep 5: Pour batter into a greased baking pan\nStep 6: Bake for 25-30 minutes until a toothpick comes out slightly fudgy\nStep 7: Cool completely before cutting into squares',
  ),
];
