import '../models/question.dart';

// =========================================
// FOOD & BEVERAGE QUESTIONS
// =========================================

final List<Question> foodBeverageQuestions = [

Question(
    category: 'Food & Beverage',
    questionText: 'Which microorganism is primarily responsible for converting milk into yoghurt?',
    options: [
      'Lactobacillus and other lactic acid bacteria',
      'Saccharomyces cerevisiae',
      'Penicillium roqueforti',
      'Acetobacter aceti',
    ],
    correctAnswerIndex: 0,
    explanation: 'Yoghurt is produced when lactic acid bacteria ferment lactose in milk, producing lactic acid. The acid lowers the pH and causes milk proteins to form the characteristic thick texture.',
    whyItMatters: 'Understanding fermentation helps food professionals control texture, flavour, shelf life and product safety.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main function of gluten in wheat-based bread dough?',
    options: [
      'To provide sweetness',
      'To create an elastic network that traps gas',
      'To prevent yeast activity',
      'To give bread its yellow colour',
    ],
    correctAnswerIndex: 1,
    explanation: 'When wheat flour is hydrated and mixed, gluten-forming proteins develop an elastic network. This network traps carbon dioxide released during fermentation, helping bread rise.',
    whyItMatters: 'Gluten development is central to bread volume, crumb structure and texture, and it helps explain why different mixing methods produce different results.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which temperature range is commonly identified as the food safety danger zone in many food-service guidelines?',
    options: [
      'Below 0°C',
      '0°C to 4°C',
      '5°C to 60°C',
      '75°C to 100°C',
    ],
    correctAnswerIndex: 2,
    explanation: 'Many food-safety authorities identify approximately 5°C to 60°C as the temperature range in which foodborne bacteria can multiply rapidly. Exact regulatory limits can vary by jurisdiction.',
    whyItMatters: 'Keeping time in the danger zone as short as possible is a basic control for reducing foodborne illness risk in kitchens and food-service operations.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which part of the coffee cherry is used to produce the coffee beans sold for roasting?',
    options: [
      'The outer skin only',
      'The seeds',
      'The leaves',
      'The flower petals',
    ],
    correctAnswerIndex: 1,
    explanation: 'The coffee beans are the seeds found inside the coffee cherry. They are processed, dried and roasted before being ground and brewed.',
    whyItMatters: 'Knowing the structure of the coffee fruit helps explain processing methods and how harvesting and post-harvest handling influence coffee quality.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does the culinary term “al dente” describe?',
    options: [
      'Pasta cooked until very soft',
      'Pasta cooked firm to the bite',
      'Pasta served without sauce',
      'Pasta cooked only by frying',
    ],
    correctAnswerIndex: 1,
    explanation: 'Al dente means “to the tooth” in Italian. It describes pasta that is cooked through but retains a slight firmness when bitten.',
    whyItMatters: 'Correct cooking texture is important for consistency, guest satisfaction and the way pasta holds up when finished in a sauce.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient is primarily responsible for the leavening action in traditional yeast bread?',
    options: [
      'Carbon dioxide produced by yeast',
      'Oxygen released by salt',
      'Nitrogen produced by flour',
      'Water vapour produced by sugar',
    ],
    correctAnswerIndex: 0,
    explanation: 'Yeast metabolises fermentable sugars and releases carbon dioxide. The gas expands within the dough and is retained by the gluten network.',
    whyItMatters: 'Understanding leavening helps bakers manage proofing time, dough temperature and bread volume.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of the following is a complete protein source?',
    options: [
      'White rice',
      'Egg',
      'Apple',
      'Olive oil',
    ],
    correctAnswerIndex: 1,
    explanation: 'Egg provides all nine essential amino acids in sufficient proportions and is commonly used as a reference protein in nutrition discussions.',
    whyItMatters: 'Protein quality matters when planning balanced menus and evaluating the nutritional contribution of foods.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the primary purpose of blanching vegetables before freezing?',
    options: [
      'To increase their sugar content',
      'To inactivate enzymes that can reduce quality',
      'To remove all water from the vegetables',
      'To sterilise them completely',
    ],
    correctAnswerIndex: 1,
    explanation: 'Brief heating followed by rapid cooling inactivates many enzymes that would otherwise cause colour, flavour and texture deterioration during frozen storage. Blanching is not sterilisation.',
    whyItMatters: 'Correct blanching improves the quality and storage stability of frozen vegetables in both household and commercial food processing.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking method uses hot air circulating around food, commonly in an oven?',
    options: [
      'Poaching',
      'Braising',
      'Baking',
      'Steaming',
    ],
    correctAnswerIndex: 2,
    explanation: 'Baking cooks food using the dry heat of an oven. In a convection oven, a fan circulates hot air to improve heat transfer and cooking uniformity.',
    whyItMatters: 'Selecting the correct cooking method affects product texture, moisture retention, energy use and production consistency.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main acid responsible for the sour taste of vinegar?',
    options: [
      'Citric acid',
      'Acetic acid',
      'Lactic acid',
      'Tartaric acid',
    ],
    correctAnswerIndex: 1,
    explanation: 'Vinegar contains acetic acid, formed when acetic acid bacteria oxidise ethanol under suitable conditions.',
    whyItMatters: 'Acidity contributes to flavour and preservation, and understanding the acid involved helps with formulation and food processing.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which Indian cooking technique involves tempering spices in hot fat or oil?',
    options: [
      'Dum',
      'Tadka',
      'Bhuna',
      'Tandoori',
    ],
    correctAnswerIndex: 1,
    explanation: 'Tadka, also called tempering, involves briefly heating spices in hot oil or ghee to release and distribute their aroma and flavour.',
    whyItMatters: 'Tempering is a foundational technique in many Indian cuisines and has a major influence on the aroma and flavour profile of a dish.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which beverage is traditionally produced by fermenting sweetened tea with a symbiotic culture of bacteria and yeast?',
    options: [
      'Kombucha',
      'Espresso',
      'Buttermilk',
      'Cocoa',
    ],
    correctAnswerIndex: 0,
    explanation: 'Kombucha is made by fermenting sweetened tea with a culture commonly called a SCOBY, which contains a community of yeasts and bacteria.',
    whyItMatters: 'Fermented beverages are an important product category, and their production requires control of fermentation, acidity and hygiene.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does “FIFO” mean in food inventory management?',
    options: [
      'Food In, Food Out',
      'First In, First Out',
      'Fresh Ingredients For Operations',
      'Final Inspection, Final Order',
    ],
    correctAnswerIndex: 1,
    explanation: 'FIFO means First In, First Out. Stock received earlier is used before newer stock, subject to product-specific date and safety controls.',
    whyItMatters: 'FIFO supports stock rotation, reduces avoidable food waste and helps prevent older ingredients from remaining unused in storage.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which nutrient provides approximately 9 kilocalories per gram?',
    options: [
      'Carbohydrate',
      'Protein',
      'Fat',
      'Dietary fibre',
    ],
    correctAnswerIndex: 2,
    explanation: 'Fat provides approximately 9 kilocalories per gram, while carbohydrate and protein each provide about 4 kilocalories per gram.',
    whyItMatters: 'Energy values are used in nutrition labelling, menu planning and understanding the energy density of foods.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Why is a food thermometer used when checking the doneness of meat?',
    options: [
      'Surface colour always indicates safe cooking',
      'Internal temperature provides a more reliable safety check',
      'It measures the amount of seasoning',
      'It prevents moisture loss',
    ],
    correctAnswerIndex: 1,
    explanation: 'A food thermometer measures the temperature inside the food, which is more reliable than judging safety by colour or texture alone. Safe target temperatures depend on the food and applicable guidance.',
    whyItMatters: 'Measuring internal temperature helps control pathogens and reduces the risk of serving undercooked meat.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cheese is traditionally used in a classic Caprese salad?',
    options: [
      'Cheddar',
      'Mozzarella',
      'Roquefort',
      'Gouda',
    ],
    correctAnswerIndex: 1,
    explanation: 'A classic Caprese salad combines tomato, fresh mozzarella, basil, olive oil and seasoning.',
    whyItMatters: 'Recognising classic ingredient combinations supports menu knowledge, recipe consistency and informed substitutions.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main purpose of emulsification in a salad dressing such as mayonnaise?',
    options: [
      'To separate oil and water',
      'To disperse one liquid in another and help stabilise the mixture',
      'To remove acidity',
      'To convert fat into protein',
    ],
    correctAnswerIndex: 1,
    explanation: 'An emulsion disperses droplets of one liquid throughout another immiscible liquid. In mayonnaise, egg yolk components help stabilise oil droplets in the water-based phase.',
    whyItMatters: 'Emulsification is essential for the texture and stability of sauces, dressings and many processed foods.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which grain is traditionally used to make polenta?',
    options: [
      'Barley',
      'Cornmeal',
      'Oats',
      'Millet',
    ],
    correctAnswerIndex: 1,
    explanation: 'Polenta is traditionally prepared by cooking ground cornmeal in water or stock until it reaches the desired consistency.',
    whyItMatters: 'Ingredient knowledge helps identify regional dishes and supports accurate menu descriptions and allergen communication.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the primary role of pectin in jam production?',
    options: [
      'To provide a gel structure',
      'To create carbonation',
      'To prevent all microbial growth',
      'To increase protein content',
    ],
    correctAnswerIndex: 0,
    explanation: 'Pectin is a naturally occurring plant polysaccharide that can form a gel under suitable conditions involving sugar and acidity, depending on the type of pectin.',
    whyItMatters: 'Pectin levels and formulation conditions influence jam firmness, spreadability and manufacturing consistency.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which beverage is made by steeping dried leaves of the Camellia sinensis plant in water?',
    options: [
      'Herbal infusion made only from mint',
      'Tea',
      'Coffee',
      'Chicory drink',
    ],
    correctAnswerIndex: 1,
    explanation: 'Black, green, white and oolong teas all come from Camellia sinensis. Their differences mainly arise from processing and oxidation methods.',
    whyItMatters: 'Understanding tea categories helps with beverage sourcing, preparation standards and menu development.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does pasteurisation aim to achieve in milk?',
    options: [
      'Remove every microorganism and make it sterile',
      'Reduce disease-causing microorganisms and improve safety',
      'Turn lactose into alcohol',
      'Remove all milk proteins',
    ],
    correctAnswerIndex: 1,
    explanation: 'Pasteurisation applies a defined time-and-temperature treatment to reduce pathogenic microorganisms and improve the safety of milk. It does not make ordinary pasteurised milk sterile.',
    whyItMatters: 'Pasteurisation is a critical public-health measure in dairy processing and helps explain milk handling and refrigeration requirements.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is an example of a dry-heat cooking method?',
    options: [
      'Steaming',
      'Boiling',
      'Roasting',
      'Simmering',
    ],
    correctAnswerIndex: 2,
    explanation: 'Roasting cooks food using hot air and radiant heat, generally without immersing it in water or another cooking liquid.',
    whyItMatters: 'Classifying cooking methods helps chefs select suitable techniques for different ingredients and desired sensory outcomes.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the principal reason for resting cooked meat before slicing?',
    options: [
      'To make it absorb more salt',
      'To allow temperature and juices to redistribute',
      'To stop all further cooking immediately',
      'To remove all fat',
    ],
    correctAnswerIndex: 1,
    explanation: 'Resting allows temperature gradients to settle and gives moisture a chance to redistribute within the meat. The exact effect depends on the cut and cooking method.',
    whyItMatters: 'Resting can improve juiciness and serving quality, particularly in roasted or grilled cuts.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient gives traditional hummus its characteristic creamy base?',
    options: [
      'Chickpeas',
      'Lentils',
      'Kidney beans',
      'Green peas',
    ],
    correctAnswerIndex: 0,
    explanation: 'Traditional hummus is made primarily from cooked chickpeas blended with tahini, lemon juice, garlic and other seasonings.',
    whyItMatters: 'Knowing core ingredients supports menu accuracy, dietary communication and the identification of suitable alternatives.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'In food science, what is the Maillard reaction?',
    options: [
      'The freezing of water inside food',
      'A reaction between reducing sugars and amino compounds that produces browning and flavour',
      'The breakdown of starch into glucose by water alone',
      'The conversion of fat into alcohol',
    ],
    correctAnswerIndex: 1,
    explanation: 'The Maillard reaction is a complex set of reactions between reducing sugars and amino compounds. It contributes to the browned colour and characteristic flavours of baked, roasted and seared foods.',
    whyItMatters: 'Controlling this reaction helps food professionals develop desirable colour and flavour while avoiding excessive browning.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which spice is obtained from the dried stigmas of a flower?',
    options: ['Cardamom', 'Saffron', 'Clove', 'Cinnamon'],
    correctAnswerIndex: 1,
    explanation: 'Saffron consists of the dried red stigmas of Crocus sativus flowers. A large number of flowers are needed to produce a small quantity, which contributes to its high price.',
    whyItMatters: 'Knowing the botanical source of premium ingredients helps with purchasing, product authentication and understanding food costs.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking method uses a small amount of fat in a shallow pan over relatively high heat?',
    options: ['Poaching', 'Sautéing', 'Steaming', 'Simmering'],
    correctAnswerIndex: 1,
    explanation: 'Sautéing cooks food quickly in a small amount of hot fat, usually while the food is moved or turned to promote even cooking.',
    whyItMatters: 'Choosing the right pan temperature and cooking method improves speed, texture and consistency in professional kitchens.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main carbohydrate stored in potatoes?',
    options: ['Lactose', 'Starch', 'Fructose', 'Cellulose'],
    correctAnswerIndex: 1,
    explanation: 'Potatoes store much of their energy as starch, a carbohydrate made of glucose units. Heating starch in the presence of water causes it to gelatinise and soften.',
    whyItMatters: 'Starch behaviour affects the texture of mashed potatoes, fries, soups, sauces and many other food products.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which milk component is primarily responsible for the formation of curd when milk is acidified?',
    options: ['Casein proteins', 'Milk fat only', 'Lactose crystals', 'Calcium carbonate'],
    correctAnswerIndex: 0,
    explanation: 'As milk becomes more acidic, casein micelles lose stability and aggregate, forming a curd. This principle is used in several dairy products.',
    whyItMatters: 'Understanding milk protein behaviour is useful in cheese-making, yoghurt production and dairy quality control.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is a naturally gluten-free cereal grain?',
    options: ['Barley', 'Rye', 'Rice', 'Wheat'],
    correctAnswerIndex: 2,
    explanation: 'Rice does not naturally contain the gluten proteins found in wheat, barley and rye. Cross-contact during processing can still be a concern for people who must avoid gluten.',
    whyItMatters: 'Accurate allergen and dietary information is essential for safe menu planning and preventing cross-contact.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the primary purpose of kneading bread dough?',
    options: ['To remove all moisture', 'To develop the gluten network', 'To stop fermentation', 'To caramelise the flour'],
    correctAnswerIndex: 1,
    explanation: 'Kneading aligns and develops gluten-forming proteins into a cohesive, elastic network that gives dough strength and helps retain fermentation gases.',
    whyItMatters: 'Kneading time and intensity influence dough handling, loaf volume and final crumb structure.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which coffee preparation method forces hot water under pressure through finely ground coffee?',
    options: ['Cold brew', 'Espresso', 'French press', 'Pour-over'],
    correctAnswerIndex: 1,
    explanation: 'Espresso is brewed by forcing hot water under pressure through a compact bed of finely ground coffee, producing a concentrated beverage.',
    whyItMatters: 'Grind size, dose, extraction time and pressure are key variables for consistent espresso quality in cafés.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which vitamin is especially vulnerable to losses during prolonged cooking in water?',
    options: ['Vitamin C', 'Vitamin D', 'Vitamin B12', 'Vitamin K'],
    correctAnswerIndex: 0,
    explanation: 'Vitamin C is water-soluble and sensitive to heat and oxidation. Prolonged cooking, especially in excess water, can reduce its content.',
    whyItMatters: 'Cooking methods and holding times influence nutrient retention, which matters in food preparation and nutrition planning.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the culinary meaning of “mise en place”?',
    options: ['Cooking over an open flame', 'Putting ingredients and equipment in place before service', 'Serving food family-style', 'Reducing a sauce until thick'],
    correctAnswerIndex: 1,
    explanation: 'Mise en place is the preparation and organisation of ingredients, tools and workstations before cooking or service begins.',
    whyItMatters: 'Good mise en place improves kitchen workflow, consistency, speed and control during busy service periods.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which substance is commonly used as a raising agent in baking powder?',
    options: ['Sodium bicarbonate with one or more acid salts', 'Table salt only', 'Gelatin', 'Citric oil'],
    correctAnswerIndex: 0,
    explanation: 'Baking powder contains sodium bicarbonate and one or more dry acid components. When moistened and heated, the reaction releases carbon dioxide gas.',
    whyItMatters: 'Correct leavening-agent selection and measurement are important for predictable cake and baked-product volume.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which part of an egg contains most of its fat?',
    options: ['Egg white', 'Egg yolk', 'Shell', 'Shell membrane'],
    correctAnswerIndex: 1,
    explanation: 'The yolk contains most of the egg’s fat, along with emulsifying phospholipids, vitamins and other nutrients. The white is mostly water and protein.',
    whyItMatters: 'Egg composition explains why yolks are useful in emulsions and rich sauces, while whites are useful for foams.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which process converts starch into simpler sugars through the action of enzymes?',
    options: ['Hydrolysis', 'Caramelisation', 'Oxidation of fat', 'Crystallisation'],
    correctAnswerIndex: 0,
    explanation: 'During enzymatic hydrolysis, enzymes such as amylases break starch molecules into smaller carbohydrates, including maltose and glucose.',
    whyItMatters: 'Starch conversion is important in brewing, baking, food processing and the development of sweetness and fermentable sugars.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which Indian fermented dairy drink is traditionally made by churning curd with water?',
    options: ['Lassi', 'Chaas', 'Shrikhand', 'Rabri'],
    correctAnswerIndex: 1,
    explanation: 'Chaas, often called buttermilk in Indian food contexts, is commonly prepared by diluting and churning curd with water and seasoning. Regional recipes vary.',
    whyItMatters: 'Regional beverage knowledge helps food businesses develop relevant menus and describe traditional products accurately.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does the term “proofing” mean in yeast-based baking?',
    options: ['Cooling baked bread', 'Allowing dough to ferment and expand before baking', 'Removing gluten from dough', 'Brushing bread with oil after baking'],
    correctAnswerIndex: 1,
    explanation: 'Proofing is a fermentation stage in which yeast produces carbon dioxide and the dough expands. The dough is then baked after reaching the appropriate level of fermentation.',
    whyItMatters: 'Under-proofing and over-proofing both affect loaf volume, structure and appearance, so proofing control is essential for bakery consistency.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which oil is known for having a high proportion of monounsaturated fatty acids?',
    options: ['Olive oil', 'Coconut oil', 'Palm kernel oil', 'Butter oil'],
    correctAnswerIndex: 0,
    explanation: 'Olive oil is rich in oleic acid, a monounsaturated fatty acid. Its exact fatty-acid profile varies with cultivar, growing conditions and processing.',
    whyItMatters: 'Understanding fat composition supports informed ingredient selection and accurate nutrition communication.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main purpose of using a bain-marie in cooking or food service?',
    options: ['To expose food directly to intense flame', 'To heat or hold food gently using a water bath', 'To freeze food rapidly', 'To remove moisture by vacuum'],
    correctAnswerIndex: 1,
    explanation: 'A bain-marie uses hot water as a gentle heat-transfer medium. It helps reduce the risk of overheating delicate preparations and is also used for hot holding in suitable equipment.',
    whyItMatters: 'Gentle, controlled heating is important for custards, sauces, chocolate and maintaining food quality during service.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these ingredients is the principal source of umami in many traditional Japanese dashi preparations?',
    options: ['Kombu seaweed', 'Cinnamon', 'Coconut sugar', 'Rose water'],
    correctAnswerIndex: 0,
    explanation: 'Kombu contains glutamate, an amino acid associated with umami. It is commonly used with other ingredients, such as dried bonito, to prepare dashi.',
    whyItMatters: 'Understanding umami helps chefs build savoury depth and balance flavour without relying only on salt.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which food preservation method removes moisture by freezing the product and then reducing pressure so ice sublimes?',
    options: ['Canning', 'Freeze-drying', 'Pickling', 'Smoking'],
    correctAnswerIndex: 1,
    explanation: 'Freeze-drying freezes the product and removes ice mainly by sublimation under reduced pressure. It can preserve structure and quality better than many conventional drying methods.',
    whyItMatters: 'Freeze-drying is used in instant foods, coffee, ingredients and emergency rations where low weight and rehydration quality are valuable.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of the following is the best example of cross-contamination?',
    options: ['Using a clean spoon to taste soup', 'Using the same unwashed cutting board for raw chicken and salad vegetables', 'Storing dry rice in a sealed container', 'Washing whole fruit under potable water'],
    correctAnswerIndex: 1,
    explanation: 'Cross-contamination occurs when harmful microorganisms or allergens transfer from one food, surface or utensil to another. An unwashed board used for raw chicken and ready-to-eat vegetables is a clear example.',
    whyItMatters: 'Separating raw and ready-to-eat foods, cleaning equipment and following safe workflows are fundamental food-safety controls.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient is traditionally used to make the Japanese seasoning paste miso?',
    options: ['Fermented soybeans', 'Roasted peanuts', 'Ground rice alone', 'Fresh cucumber'],
    correctAnswerIndex: 0,
    explanation: 'Miso is generally made by fermenting soybeans with salt and koji; rice or barley may also be included depending on the style.',
    whyItMatters: 'Knowing fermentation ingredients helps with menu descriptions, dietary checks and understanding regional flavour profiles.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does “cold chain” mean in food distribution?',
    options: ['Transporting food only at night', 'Maintaining required chilled or frozen temperatures throughout storage and transport', 'Keeping all food at room temperature', 'Using refrigerated vehicles only for beverages'],
    correctAnswerIndex: 1,
    explanation: 'The cold chain is the temperature-controlled system used to store, handle and transport perishable products from production to the point of use or sale.',
    whyItMatters: 'A maintained cold chain slows microbial growth and protects product safety, quality and shelf life.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which component in chilli peppers is mainly responsible for their pungency?',
    options: ['Capsaicin', 'Pectin', 'Lycopene', 'Menthol'],
    correctAnswerIndex: 0,
    explanation: 'Capsaicin and related capsaicinoids activate heat-sensitive receptors, creating the sensation of pungency or heat.',
    whyItMatters: 'Capsaicinoid levels influence perceived heat, product formulation and consistency in spicy foods and sauces.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'In beverage service, what is a “mocktail”?',
    options: ['A cocktail served warm', 'A mixed drink prepared without alcohol', 'A drink made only from coffee', 'A fermented alcoholic beverage'],
    correctAnswerIndex: 1,
    explanation: 'A mocktail is a mixed beverage designed in a cocktail style but made without alcohol. It may use juices, syrups, herbs, spices, soda and other ingredients.',
    whyItMatters: 'Mocktails broaden beverage choices for guests who avoid alcohol and allow outlets to develop premium non-alcoholic offerings.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which measurement is commonly used to express the acidity or alkalinity of a food product?',
    options: ['pH', 'RPM', 'Watt-hour', 'Decibel'],
    correctAnswerIndex: 0,
    explanation: 'pH indicates the acidity or alkalinity of an aqueous solution. In foods, pH influences flavour, texture, enzyme activity and microbial growth.',
    whyItMatters: 'Monitoring pH is important in fermentation, preservation, product formulation and food-safety control.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Why is sugar added when making traditional fruit preserves?',
    options: ['Only to change the colour', 'To contribute sweetness and help reduce available water for microbial growth', 'To eliminate the need for hygienic processing', 'To increase the protein content'],
    correctAnswerIndex: 1,
    explanation: 'At sufficiently high concentrations, sugar binds water and lowers water activity, making conditions less favourable for many microorganisms. Preservation still depends on factors such as acidity, heat treatment and hygienic packaging.',
    whyItMatters: 'Understanding water activity helps explain how jams and preserves achieve shelf stability and why recipes and processing controls matter.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which Indian spice is the dried flower bud of a tree?',
    options: ['Cumin', 'Clove', 'Black pepper', 'Fenugreek'],
    correctAnswerIndex: 1,
    explanation: 'Cloves are the dried, unopened flower buds of the clove tree, Syzygium aromaticum. They have a strong aroma due to their volatile oil content, particularly eugenol.',
    whyItMatters: 'Knowing the botanical identity and flavour strength of spices helps with recipe formulation, purchasing and quality assessment.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main purpose of marinating meat before cooking?',
    options: [
      'To guarantee complete sterilisation',
      'To add flavour and, depending on the marinade, influence surface texture',
      'To remove all protein',
      'To make refrigeration unnecessary',
    ],
    correctAnswerIndex: 1,
    explanation: 'Marinades commonly contain seasonings, acids, oils or enzymes. They mainly flavour the surface; some ingredients can alter texture, but marinades do not reliably sterilise meat or make it safe without proper cooking.',
    whyItMatters: 'Correct marination improves flavour consistency while safe refrigeration and cooking remain essential controls.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which gas is primarily responsible for the bubbles in carbonated soft drinks?',
    options: ['Oxygen', 'Nitrogen', 'Carbon dioxide', 'Hydrogen'],
    correctAnswerIndex: 2,
    explanation: 'Carbon dioxide is dissolved in the beverage under pressure. When the container is opened, pressure falls and the gas escapes as bubbles.',
    whyItMatters: 'Carbonation affects mouthfeel, perceived acidity and product quality, making it an important beverage-production parameter.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is a high-moisture fresh cheese traditionally associated with Italy?',
    options: ['Parmigiano-Reggiano', 'Mozzarella', 'Pecorino Romano', 'Aged cheddar'],
    correctAnswerIndex: 1,
    explanation: 'Fresh mozzarella has a high moisture content and a soft, elastic texture. It is traditionally associated with Italian cheesemaking.',
    whyItMatters: 'Cheese styles differ in moisture, storage needs, melting behaviour and culinary use, all of which matter in menu planning.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does “reducing a sauce” mean in cooking?',
    options: [
      'Adding cold water to dilute it',
      'Simmering it to evaporate liquid and concentrate flavour',
      'Freezing it until solid',
      'Straining out every seasoning',
    ],
    correctAnswerIndex: 1,
    explanation: 'Reduction involves simmering or boiling a liquid so that water evaporates. This concentrates dissolved flavours and can increase viscosity.',
    whyItMatters: 'Reduction is a fundamental way to control sauce intensity and consistency without relying only on added thickeners.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which food component is mainly responsible for the gel formation in properly prepared gelatin desserts?',
    options: ['Gelatin proteins', 'Starch granules', 'Vegetable oils', 'Simple sugars alone'],
    correctAnswerIndex: 0,
    explanation: 'Gelatin is derived from collagen. On cooling, gelatin molecules form a network that traps liquid and creates a gel.',
    whyItMatters: 'Understanding gelling agents helps pastry teams control dessert texture and choose alternatives for vegetarian or vegan menus.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which Indian dish is commonly prepared by slow-cooking rice and meat together with spices in a sealed pot?',
    options: ['Idli', 'Biryani cooked dum-style', 'Dhokla', 'Pongal only'],
    correctAnswerIndex: 1,
    explanation: 'Dum-style biryani is cooked in a sealed vessel so that heat and steam circulate within the pot, allowing the rice, meat and spices to finish cooking together.',
    whyItMatters: 'Understanding regional cooking techniques helps maintain authenticity, manage batch cooking and describe dishes accurately.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the principal function of an antioxidant in food?',
    options: [
      'To accelerate rancidity',
      'To slow oxidation reactions',
      'To increase microbial contamination',
      'To remove all moisture',
    ],
    correctAnswerIndex: 1,
    explanation: 'Antioxidants slow oxidation reactions that can cause rancidity, colour changes and flavour deterioration. Their effectiveness depends on the food system and antioxidant used.',
    whyItMatters: 'Oxidation control can extend product quality and shelf life, particularly in foods containing fats and oils.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of the following is a common sign of rancidity in fats and oils?',
    options: [
      'A fresh, neutral aroma',
      'An unpleasant stale or paint-like odour',
      'A higher protein content',
      'A brighter natural colour in every case',
    ],
    correctAnswerIndex: 1,
    explanation: 'Oxidative or hydrolytic deterioration of fats can produce unpleasant odours and flavours, often described as stale, soapy or paint-like.',
    whyItMatters: 'Recognising rancidity helps prevent poor-quality ingredients from entering production or being served to customers.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which coffee drink is typically made with espresso and a larger proportion of steamed milk, finished with a layer of milk foam?',
    options: ['Cappuccino', 'Americano', 'Ristretto', 'Espresso macchiato'],
    correctAnswerIndex: 0,
    explanation: 'A cappuccino is traditionally prepared with espresso, steamed milk and a layer of milk foam. Exact ratios and serving conventions vary between cafés.',
    whyItMatters: 'Standardised beverage recipes support consistent taste, portion control, staff training and customer expectations.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which mineral is essential for the formation and maintenance of bones and teeth?',
    options: ['Calcium', 'Sodium', 'Iodine', 'Chloride'],
    correctAnswerIndex: 0,
    explanation: 'Calcium is a major structural mineral in bones and teeth and also plays roles in muscle contraction, nerve signalling and blood clotting.',
    whyItMatters: 'Nutrient knowledge supports balanced menu planning and helps food professionals communicate nutritional information accurately.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the purpose of adding yeast to traditional beer wort?',
    options: [
      'To convert fermentable sugars into alcohol and carbon dioxide',
      'To remove all bitterness',
      'To turn proteins directly into starch',
      'To sterilise the finished beer',
    ],
    correctAnswerIndex: 0,
    explanation: 'During alcoholic fermentation, yeast metabolises fermentable sugars in wort and produces ethanol and carbon dioxide, along with flavour-active compounds.',
    whyItMatters: 'Fermentation management affects beverage strength, carbonation, aroma and consistency in brewing.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking method involves cooking food slowly in a covered vessel with a relatively small amount of liquid?',
    options: ['Braising', 'Deep-frying', 'Grilling', 'Toasting'],
    correctAnswerIndex: 0,
    explanation: 'Braising typically begins with browning and continues with slow cooking in a covered vessel with a limited amount of liquid. It is especially useful for tougher cuts.',
    whyItMatters: 'Braising transforms tougher ingredients into tender dishes and helps kitchens use a wider range of cuts economically.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which natural pigment gives many tomatoes their red colour?',
    options: ['Chlorophyll', 'Lycopene', 'Anthocyanin', 'Curcumin'],
    correctAnswerIndex: 1,
    explanation: 'Lycopene is a carotenoid pigment responsible for the characteristic red colour of many tomato varieties.',
    whyItMatters: 'Pigment knowledge helps explain food colour, ingredient selection and changes that occur during processing and storage.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Why is a rapid cooling process important for cooked food intended for refrigerated storage?',
    options: [
      'It encourages bacterial growth',
      'It limits the time food spends at temperatures that support rapid microbial growth',
      'It removes the need for covered storage',
      'It makes food permanently shelf-stable',
    ],
    correctAnswerIndex: 1,
    explanation: 'Rapid cooling moves cooked food through temperature ranges that support microbial growth more quickly. Food should be divided into suitable shallow portions or cooled using approved methods, then refrigerated safely.',
    whyItMatters: 'Cooling control is a key food-safety step in restaurants, catering operations and central kitchens.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these ingredients is a common source of natural food colour from the red-purple anthocyanin pigment group?',
    options: ['Red cabbage', 'Refined sugar', 'Corn starch', 'Coconut oil'],
    correctAnswerIndex: 0,
    explanation: 'Red cabbage contains anthocyanins, water-soluble pigments whose colour can change with pH. Acidic conditions tend to produce redder tones, while alkaline conditions can shift the colour toward blue-green.',
    whyItMatters: 'Natural pigments are used in food formulation, and their sensitivity to pH and processing conditions affects product appearance.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main purpose of sieving flour before making a delicate cake?',
    options: [
      'To increase its protein content',
      'To break up lumps and help distribute dry ingredients evenly',
      'To remove all gluten',
      'To sterilise the flour',
    ],
    correctAnswerIndex: 1,
    explanation: 'Sieving breaks up lumps and aerates flour, making it easier to combine evenly with other dry ingredients. It does not remove gluten or sterilise flour.',
    whyItMatters: 'Consistent dry-ingredient distribution helps reduce uneven texture and improves repeatability in baking.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which food is traditionally made by fermenting cabbage with lactic acid bacteria?',
    options: ['Kimchi', 'Hummus', 'Falafel', 'Gnocchi'],
    correctAnswerIndex: 0,
    explanation: 'Kimchi is a Korean fermented vegetable preparation, commonly made with napa cabbage or other vegetables, seasonings and lactic acid bacteria.',
    whyItMatters: 'Fermented vegetables are important in global cuisines and require appropriate salt levels, hygiene and fermentation control.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main difference between sorbet and traditional dairy ice cream?',
    options: [
      'Sorbet is generally made without dairy ingredients',
      'Sorbet must contain egg yolk',
      'Ice cream contains no water',
      'Sorbet is always served hot',
    ],
    correctAnswerIndex: 0,
    explanation: 'Sorbet is generally made from fruit or flavouring, water and sugar without dairy. Traditional dairy ice cream contains milk and/or cream, although recipes vary.',
    whyItMatters: 'Understanding frozen-dessert formats helps with menu classification, dietary communication and product development.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'In food processing, what does “water activity” measure?',
    options: [
      'The total weight of water in a product',
      'The availability of water for chemical reactions and microbial growth',
      'The temperature at which water boils',
      'The amount of steam released during cooking',
    ],
    correctAnswerIndex: 1,
    explanation: 'Water activity (aw) indicates how much water is available for microbial growth and certain chemical reactions. It is not the same as total moisture content.',
    whyItMatters: 'Water activity is a key concept in shelf-life design, preservation and assessing the stability of products such as dried foods and confectionery.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient is the principal source of cocoa butter in chocolate?',
    options: ['Cocoa liquor', 'Milk powder', 'Wheat flour', 'Gelatin'],
    correctAnswerIndex: 0,
    explanation: 'Cocoa liquor, also called cocoa mass, is produced by grinding roasted cocoa nibs. It contains both cocoa solids and cocoa butter.',
    whyItMatters: 'Cocoa butter content influences chocolate texture, melting behaviour, mouthfeel and formulation costs.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which service style involves placing shared dishes on the table for guests to serve themselves?',
    options: ['French guéridon service', 'Family-style service', 'Plated service', 'Silver service'],
    correctAnswerIndex: 1,
    explanation: 'In family-style service, dishes are placed on the table and guests serve themselves or pass food among the group.',
    whyItMatters: 'Service-style knowledge helps operators plan staffing, table layout, portioning and the overall dining experience.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What causes the characteristic aroma released when onions are cut?',
    options: [
      'Sulfur-containing compounds formed through enzymatic reactions',
      'Only the evaporation of water',
      'The production of caffeine',
      'The formation of gluten',
    ],
    correctAnswerIndex: 0,
    explanation: 'Cutting onion cells brings sulfur-containing precursors into contact with enzymes, producing volatile compounds responsible for its pungent aroma and eye irritation.',
    whyItMatters: 'Understanding flavour chemistry helps explain ingredient behaviour and informs preparation techniques used to manage pungency.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is the most appropriate way to verify a food allergen control procedure in a commercial kitchen?',
    options: [
      'Assume staff remember the recipe',
      'Check ingredient labels, prevent cross-contact and verify the preparation process',
      'Remove visible allergen pieces after cooking',
      'Rely only on the dish name on the menu',
    ],
    correctAnswerIndex: 1,
    explanation: 'Allergen control requires checking supplier information and recipes, separating ingredients and equipment where needed, cleaning effectively and confirming the correct dish reaches the guest.',
    whyItMatters: 'Robust allergen management can prevent serious allergic reactions and is a core responsibility in food service.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient is commonly used to thicken a béchamel sauce?',
    options: ['Roux made from butter and flour', 'Whipped egg whites', 'Gelatin sheets', 'Vinegar and sugar'],
    correctAnswerIndex: 0,
    explanation: 'Béchamel is a classic white sauce thickened with a roux, a cooked mixture of fat and flour, to which milk is gradually added.',
    whyItMatters: 'Knowing foundational sauces and thickening methods helps chefs produce consistent textures and adapt recipes for different dishes.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking technique involves briefly immersing food in boiling water and then cooling it rapidly?',
    options: ['Blanching', 'Braising', 'Smoking', 'Grilling'],
    correctAnswerIndex: 0,
    explanation: 'Blanching briefly heats food in boiling water or steam and is often followed by rapid cooling. It is used to loosen skins, set colour or inactivate enzymes before further processing.',
    whyItMatters: 'Correct blanching supports consistent preparation and helps preserve the colour, flavour and quality of vegetables during storage or further cooking.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which type of sugar is naturally present in milk?',
    options: ['Sucrose', 'Lactose', 'Maltose', 'Fructose'],
    correctAnswerIndex: 1,
    explanation: 'Lactose is the principal naturally occurring sugar in mammalian milk. It is a disaccharide made of glucose and galactose.',
    whyItMatters: 'Lactose knowledge is important for dairy formulation, fermentation and identifying products that may not be suitable for people with lactose intolerance.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main function of yeast in traditional wine production?',
    options: [
      'To convert sugars in grape must into alcohol and carbon dioxide',
      'To remove all acids from grape juice',
      'To turn grape skins into starch',
      'To sterilise the wine after fermentation',
    ],
    correctAnswerIndex: 0,
    explanation: 'Yeast carries out alcoholic fermentation, converting fermentable sugars in grape must mainly into ethanol and carbon dioxide, along with other compounds that influence aroma and flavour.',
    whyItMatters: 'Fermentation control influences alcohol level, flavour profile and consistency in wine production.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking method uses hot oil to cook food while it is fully submerged?',
    options: ['Pan-searing', 'Deep-frying', 'Poaching', 'Steaming'],
    correctAnswerIndex: 1,
    explanation: 'Deep-frying cooks food by immersing it in hot oil. Heat rapidly sets the surface and drives moisture from the outer layers, often producing a crisp crust.',
    whyItMatters: 'Oil temperature, loading and filtration affect product quality, oil life, operating cost and food safety.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which food additive is commonly used as a raising agent and is also known as baking soda?',
    options: ['Sodium bicarbonate', 'Sodium chloride', 'Calcium carbonate', 'Potassium sorbate'],
    correctAnswerIndex: 0,
    explanation: 'Sodium bicarbonate releases carbon dioxide when it reacts with an acid or decomposes under suitable heating conditions. The gas expands baked mixtures.',
    whyItMatters: 'Correct leavening-agent selection and measurement are essential for controlling the volume, texture and taste of baked products.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which part of a fish is commonly used to assess freshness through its appearance?',
    options: ['Clear, bright eyes and fresh-looking gills', 'Dry, sunken eyes and brown gills', 'Loose scales with a strong ammonia smell', 'Dull eyes and slimy discoloured gills'],
    correctAnswerIndex: 0,
    explanation: 'Fresh whole fish commonly have clear, bright eyes and gills that appear red or pink, depending on species and handling. Freshness should be assessed using multiple indicators, including odour, texture and temperature history.',
    whyItMatters: 'Freshness assessment helps buyers and food-service operators maintain product quality and identify fish that may be deteriorating.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the primary purpose of using a starter culture in yoghurt production?',
    options: [
      'To introduce selected microorganisms that ferment lactose',
      'To remove all milk proteins',
      'To increase the fat content automatically',
      'To prevent any acid formation',
    ],
    correctAnswerIndex: 0,
    explanation: 'A yoghurt starter culture contains selected lactic acid bacteria that ferment lactose into lactic acid, creating the characteristic acidity and texture.',
    whyItMatters: 'Starter culture selection and control help dairy manufacturers achieve predictable fermentation, flavour and product consistency.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is a traditional Japanese noodle made primarily from buckwheat flour?',
    options: ['Udon', 'Soba', 'Ramen', 'Shirataki'],
    correctAnswerIndex: 1,
    explanation: 'Soba noodles are traditionally made with buckwheat flour, although some versions include wheat flour to improve handling and texture.',
    whyItMatters: 'Ingredient knowledge supports accurate menu descriptions and helps identify potential gluten exposure in products that may contain wheat.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does the term “yield” mean in a professional kitchen recipe?',
    options: [
      'The amount of usable finished product produced',
      'The number of ingredients in a recipe',
      'The time taken to wash equipment',
      'The temperature of the cooking oil',
    ],
    correctAnswerIndex: 0,
    explanation: 'Recipe yield is the quantity of usable product produced by a recipe, often expressed as portions, servings or total weight.',
    whyItMatters: 'Yield calculations are essential for portion control, purchasing, food-cost calculation and production planning.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which ingredient is the main source of the characteristic bitter taste in tonic water?',
    options: ['Quinine', 'Vanillin', 'Capsaicin', 'Lactic acid'],
    correctAnswerIndex: 0,
    explanation: 'Tonic water contains quinine, a bitter compound traditionally associated with the drink. Commercial products use regulated, limited concentrations.',
    whyItMatters: 'Understanding flavour components helps beverage teams balance bitterness, sweetness and acidity when creating mixed drinks.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which process is responsible for the characteristic flavour development in roasted coffee beans?',
    options: [
      'A combination of Maillard reactions, caramelisation and other thermal reactions',
      'Only the freezing of water',
      'The formation of gluten',
      'The fermentation of milk proteins',
    ],
    correctAnswerIndex: 0,
    explanation: 'Roasting triggers several chemical reactions, including Maillard reactions and sugar degradation, which generate the colour and complex aroma compounds associated with roasted coffee.',
    whyItMatters: 'Roast profile and control strongly influence coffee aroma, bitterness, acidity and consistency between batches.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of the following is a common plant-based alternative used to replace dairy milk in beverages?',
    options: ['Oat drink', 'Beef stock', 'Gelatin solution', 'Clarified butter'],
    correctAnswerIndex: 0,
    explanation: 'Oat drinks are made from oats and water, often with additional ingredients to improve texture, flavour or nutritional profile. Their composition varies by brand.',
    whyItMatters: 'Plant-based beverage options help businesses serve customers with different dietary preferences, while ingredient and allergen checks remain necessary.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main purpose of using a food-grade sanitiser after cleaning a food-contact surface?',
    options: [
      'To reduce microorganisms to an acceptable level',
      'To remove large food scraps only',
      'To add fragrance to the surface',
      'To replace all cleaning procedures',
    ],
    correctAnswerIndex: 0,
    explanation: 'Cleaning removes soil and food residues; sanitising then reduces microorganisms on the cleaned surface to a level considered safe under the applicable standard. Sanitiser concentration and contact time must follow the label instructions.',
    whyItMatters: 'Correct cleaning and sanitising procedures reduce contamination risks and are fundamental to food-service hygiene.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which cooking technique uses direct radiant heat from above or below the food?',
    options: ['Grilling', 'Stewing', 'Poaching', 'Braising'],
    correctAnswerIndex: 0,
    explanation: 'Grilling cooks food using direct radiant heat, commonly from a flame or heated element. Heat intensity and distance influence browning and cooking time.',
    whyItMatters: 'Grilling is widely used in food service and requires control of heat, timing and food placement to achieve consistent results.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is a common indicator that cooking oil used for deep-frying has deteriorated?',
    options: [
      'Excessive foaming, darkening and an unpleasant odour',
      'A consistently clear appearance and neutral smell',
      'A lower viscosity in every case',
      'An increase in the oil’s vitamin content',
    ],
    correctAnswerIndex: 0,
    explanation: 'Repeated heating and exposure to food, air and moisture can degrade frying oil. Darkening, persistent foaming, off-odours and changes in performance can indicate deterioration.',
    whyItMatters: 'Monitoring frying oil protects food quality and helps kitchens manage operating costs and safe oil-handling practices.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which traditional Indian fermented food is made from a batter of rice and black gram and cooked into a steamed cake?',
    options: ['Dhokla', 'Idli', 'Puri', 'Paratha'],
    correctAnswerIndex: 1,
    explanation: 'Idli is commonly made from a fermented batter of rice and urad dal (black gram), which is steamed in moulds to produce a soft, spongy cake.',
    whyItMatters: 'Knowledge of traditional fermentation and preparation methods helps preserve culinary accuracy and support consistent production.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main role of lecithin in many food products?',
    options: [
      'It acts as an emulsifier',
      'It acts only as a colouring agent',
      'It converts proteins into starch',
      'It removes all moisture',
    ],
    correctAnswerIndex: 0,
    explanation: 'Lecithin is a mixture of phospholipids that can help stabilise emulsions by supporting the dispersion of oil and water phases.',
    whyItMatters: 'Emulsifiers are important in products such as chocolate, dressings, sauces and baked goods because they influence texture and stability.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which type of food packaging is designed to remove air and seal the product in a reduced-oxygen environment?',
    options: ['Vacuum packaging', 'Open tray display', 'Perforated paper wrapping', 'Unsealed cloth wrapping'],
    correctAnswerIndex: 0,
    explanation: 'Vacuum packaging removes much of the air from a package before sealing. It can slow some forms of spoilage, but it does not eliminate pathogens and requires appropriate temperature and safety controls.',
    whyItMatters: 'Packaging choices affect shelf life, distribution and food safety; reduced-oxygen products need controls suited to their specific hazards.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which type of tea is generally produced with the greatest degree of oxidation among the main traditional tea categories?',
    options: ['Green tea', 'White tea', 'Black tea', 'Most lightly processed yellow teas'],
    correctAnswerIndex: 2,
    explanation: 'Black tea is generally fully oxidised during processing, while green tea is heated early to limit oxidation. Processing details vary by tea style.',
    whyItMatters: 'Tea processing determines colour, aroma, taste and product category, helping beverage businesses source and describe tea accurately.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What does the term “portion control” mean in food service?',
    options: [
      'Serving a consistent, planned quantity of food per guest',
      'Serving different quantities at random',
      'Removing all garnishes from a dish',
      'Cooking every dish for the same amount of time',
    ],
    correctAnswerIndex: 0,
    explanation: 'Portion control uses defined serving weights, counts or measures to ensure that each guest receives a consistent quantity.',
    whyItMatters: 'Portion control supports customer consistency, food-cost management, nutrition information and inventory planning.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which food component is mainly responsible for the thickening that occurs when cornstarch is heated with water?',
    options: ['Starch granules', 'Milk fat', 'Gelatin proteins', 'Fruit acids'],
    correctAnswerIndex: 0,
    explanation: 'When heated in water, starch granules absorb water, swell and release some starch molecules. This process, known as gelatinisation, increases the mixture’s viscosity.',
    whyItMatters: 'Starch gelatinisation is central to preparing gravies, custards, pie fillings and many industrial food products.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which of these is the safest practice when thawing frozen meat for later cooking?',
    options: [
      'Thawing it in a refrigerator at a controlled temperature',
      'Leaving it on a kitchen counter overnight',
      'Placing it in direct sunlight',
      'Keeping it beside a hot oven',
    ],
    correctAnswerIndex: 0,
    explanation: 'Refrigerator thawing keeps meat at a controlled cold temperature while it defrosts. Other approved methods may be used when properly controlled, but room-temperature thawing increases risk.',
    whyItMatters: 'Safe thawing limits microbial growth and prevents potentially hazardous temperature exposure before cooking.',
    difficulty: 'Easy',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which term describes the pleasant savoury taste associated with glutamate-rich foods such as aged cheese and tomatoes?',
    options: ['Umami', 'Astringency', 'Pungency', 'Bitterness'],
    correctAnswerIndex: 0,
    explanation: 'Umami is commonly described as a savoury taste and is associated with compounds such as glutamate and certain nucleotides.',
    whyItMatters: 'Understanding umami helps chefs build flavour balance and develop satisfying dishes using ingredients such as mushrooms, tomatoes, aged cheese and fermented products.',
    difficulty: 'Medium',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'What is the main reason food businesses use a Hazard Analysis and Critical Control Point (HACCP) system?',
    options: [
      'To identify, evaluate and control significant food-safety hazards',
      'To calculate restaurant seating capacity only',
      'To determine the selling price of every menu item',
      'To replace staff hygiene training',
    ],
    correctAnswerIndex: 0,
    explanation: 'HACCP is a preventive food-safety system that identifies hazards and establishes controls at points where they can be prevented, eliminated or reduced to acceptable levels.',
    whyItMatters: 'HACCP-based controls help food businesses systematically manage biological, chemical and physical hazards throughout production and service.',
    difficulty: 'Hard',
  ),

Question(
    category: 'Food & Beverage',
    questionText: 'Which factor most directly affects the rate at which ice melts in a cold beverage?',
    options: ['Heat transfer from the surrounding liquid and environment', 'The colour of the drinking glass alone', 'The number of ingredients listed on the menu', 'The height of the serving table'],
    correctAnswerIndex: 0,
    explanation: 'Ice melts when it absorbs heat from the beverage and its surroundings. The rate depends on factors such as temperature difference, exposed surface area, insulation and stirring.',
    whyItMatters: 'Understanding heat transfer helps beverage teams maintain serving temperature and manage dilution in cold drinks.',
    difficulty: 'Medium',
  )

];

// =========================================
// END OF FILE
// =========================================
