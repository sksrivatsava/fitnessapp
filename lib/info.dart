
class user{

  String Bmi;
  String Cal;
  String points;
  List<dynamic> plans;
  List<dynamic> coupans;

}

  class coup{
    String img;
    String name;
    int rate;
    
    coup(this.img,this.name,this.rate);
  }

List<dynamic> quot=[
  'Success usually comes to those who are too busy to be looking for it.— Henry David Thoreau',
  'If you think lifting is dangerous, try being weak. Being weak is dangerous.- Bret Contreras',
  'The only place where success comes before work is in the dictionary.-  Vidal Sassoon',
  'You have to think it before you can do it. The mind is what makes it all possible. -  Kai Greene'
  'Once you learn to quit, it becomes a habit- Vince Lombardi Jr'

] ;
List<dynamic> cl=[
    coup('assets/swiggy.png','flat 10% off on swiggy health products', 75),
    coup('assets/zomato.jpg','flat 15% off on zomato products',100),
    coup('assets/swiggy.png','flat 20% off on swiggy produtcs',150),
    coup('assets/gf.png','flat 40% off on groffers products',250),
    coup('assets/bb.jpg','flat 65% off on big basket products',500),
    coup('assets/fitnesst.jpg','flat 50% off on nike training kit',750),
    coup('assets/fitnesst.jpg','get 100% off on nike training kit',1400),


  

];

List<dynamic> caloriegainmeal=[
  [
  'Peanut Butter on Wholegrain Toast: Toasted wholegrain bread+ 2 tbsp peanut butter. Drizzle with honey to taste. Serve with 1 hot chocolate, made with milk + 1 serve of fruit (eg. 1 medium pear or orange).',
    'Chicken and Pasta Salad: Cooked chicken + pasta + 1 cup leafy green vegetables (eg. spinach, rocket) + tomato + avocado + crumbled feta cheese + olive oil/vinegar dressing.',
    'Lamb Chops and Vegetables: Lamb chop, trimmed & shallow fried in olive oil. Serve with sweet potato mash made with milk and olive oil + 2 cups cooked vegetables.'

],

  [
    'Chia Porridge with Fruit: 2 tbsp chia seeds + rolled oats + 1.5 cup full cream milk + 1 serve of fruit (eg. 1 medium banana or 6 dried prunes).',
    'Egg, Cheese and Salad Wrap: 2 boiled & mashed eggs + 2 cheese slices + avocado + 1 cup salad vegetables (eg. lettuce, cucumber, carrot, capsicum) rolled up in tortilla bread (make 2 wraps) + 1 cup fruit juice',
    'Baked Salmon, Cous Cous and Vegetables: Oven baked salmon fillet, sprinkled with sesame oil and sesame seeds + wholemeal cous cous + 2 cups cooked vegetables. Serve with hommus.',

  ],
  [
    'Sweet Potato Spanish Omelette (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
    'Lentil, Vegetables and Barley Soup: Lentils with 1 cup chopped vegetables (eg. carrot, pumpkin, celery, onion), vegetable stock and barley. Serve with dollop of natural yoghurt. + 1 serve of fruit.',
    'Spaghetti Bolognese: Lean mince with tomato, tomato puree, herbs & garlic served on spaghetti and sprinkled with cheese + 1 cup salad (eg. baby spinach, carrots, cucumber) with olive oil based dressing.'
  ],
  [
    'Wholegrain Cereal with Milk and Fruit: Wholegrain flaky cereal + full cream milk + 2 tbsp linseeds + 1 serve of fruit (eg. 6 dried apricot halves or 4 small plums).',
    'Chicken and Noodle Stir-fry: Sliced lean chicken + Hokkein noodles + 1 cup vegetables (eg. beans, capsicum, spinach, carrot) cooked in sesame oil + sweet soy sauce dressing. Sprinkle with sesame seed',
    'Nasi Goreng Tray Bake (1 serve): Serve with 2 cup mixed salad vegetables.'
  ],
  [
    'Poached Eggs with Sauteed Field Mushroom and Avocado (1 serve): Serve with 1 cafe latte or hot chocolate made with full cream milk.',
    'Fish and Chips: Dip fish fillets in flour, egg then breadcrumbs and shallow fry in canola oil. Serve with homemade thick potato chunky chips, lemon wedges and 2 cups mixed salad vegetables with olive oil dressing. + 1 serve of fruit.',
    'Mango Chicken and Corn: Grilled chicken thighs served with mango salsa, corn on the cob & 1.5 cups baked vegetables (eg. carrot, onion, beans) in olive oil.'
  ],
  [
    'Fruit Toast with Berry Smoothie: Slices of fruit toast spread with butter and/or jam to taste. Serve with a smoothie made with 1 cup full cream milk + 1 cup berries + 2 tbsp linseed/sunflower/almond meal.',
    'Tuna and Quinoa Salad: Tuna in oil mixed with 3 bean mix + 2 cups salad vegetables (eg. leafy greens, tomato, cucumber, carrot, capsicum) + cooked quinoa + olive oil/vinegar dressing.',
    'Easy Fish Pie: Serve with 2 cup mixed salad vegetables.'
  ],
  [
    'Bechamel Spinach Baked Egg (1 serve): Serve with 1 café latte.',
    'Beef and Noodle Soup: Thinly sliced beef + fresh flat rice noodles + 1 cup vegetables (eg. bean sprouts, carrot, broccoli) cooked in vegetable stock. Sprinkle with diced green onion. + 1 serve of fruit (eg. 1 medium apple or banana).',
    'Pork Roast and Vegetables: Lean pork roast + baked potato + 1.5 cups baked vegetables + olive oil (for cooking).'
  ]

];

List<dynamic> goodfitmeal=[['Sambar with 2 brown rice idlis/ Paneer sandwich with mint chutney',
  'Whole-grain roti with mixed-vegetable curry with one dal',
  'Tofu/chicken curry with mixed vegetables and a fresh spinach salad/chicken gravy with 2 multigrain rotis'

],
  [
    'Chana dal pancakes with mixed vegetables and a glass of milk/ bread and egg with fruits',
    'Chickpea curry with brown rice/ Brown rice with dal',
    'Khichdi with sprout salad/Veg paratha with raita'
  ],
  [
    'Apple cinnamon porridge/ Vegetable uttapam with sambhar',
    'Whole-grain roti with tofu/ non veg and mixed vegetables',
    'Palak paneer with brown rice and vegetables/ 2 Multigrain rotis with chicken and curd'
  ],

  [
    'Yogurt with sliced fruits and sunflower seeds/ vegetable poha',
    'Whole-grain roti with vegetable sabzi/ Dal with veg or non veg sabzi and brown rice',
    'Chana masala with basmati rice and green salad/ One bowl of fruits and vegetables with multigrain rotis'
  ],

  [
    'Vegetable dalia and a glass of milk/ 3-4 dal paddu with sambar',
    'Vegetable sambar with brown rice/ 2 multigrain roti with veg/non veg curry',
    'Tofu curry with potatoes and mixed vegetables/ chicken curry with 2 multigrain rotis',
  ],
  [
    'Multigrain parathas with avocado and sliced papaya/ dal paratha with mixed vegetables',
    'Large salad with rajma curry and quinoa/ one bowl mixed vegetable kadai',
    'Lentil pancakes with tofu tikka masala/ green salad with mixed vegetables and multigrain roti'
  ],
  [
    'Buckwheat porridge with sliced mango/ fruit salad with a glass of milk',
    'Vegetable soup with whole-grain roti/ one bowl millet and dal khichdi with multigrain roti',
    'Masala-baked tofu with vegetable curry/ non veg curry (chicken, seafood) with multigrain roti'
  ]
];
class wk{

  String gif;
  String wname;

  wk(this.gif,this.wname);

}
List<dynamic> goodfitwk=[

  [
    wk('assets/jog.gif', 'jogging 15min'),
    wk('assets/jj.gif','jumping jacks 20 sec'),
    wk('assets/pu.gif','pushups X 4'),
    wk('assets/ipu.gif','inclined pushups x 4'),
    wk('assets/wpu.gif','wide arm oushups x 4')
  ],

  [
    wk('assets/jog.gif', 'jogging 15min'),
    wk('assets/jj.gif','jumping jacks 20 sec'),
    wk('assets/mc.gif','Mountan Climber X 8'),
    wk('assets/rt.gif','russian twist x 4'),
    wk('assets/ac.gif','abdominal crunches x 7'),
  ]
];
List<dynamic> weightlosswk=[

  [
    wk('assets/jog.gif', 'jogging 20min'),
    wk('assets/jj.gif','jumping jacks 40 sec'),
    wk('assets/pu.gif','pushups X 8'),
    wk('assets/ipu.gif','inclined pushups x 8'),
    wk('assets/wpu.gif','wide arm oushups x 8')
  ],

  [
    wk('assets/jog.gif', 'jogging 20min'),
    wk('assets/jj.gif','jumping jacks 40 sec'),
    wk('assets/mc.gif','Mountan Climber X 16'),
    wk('assets/rt.gif','russian twist x 8'),
    wk('assets/ac.gif','abdominal crunches x 12'),
  ]
];

List<dynamic> caloriegainwk=[

  [
    wk('assets/ar.gif', 'arm raise 10min'),
    wk('assets/jj.gif','jumping jacks 20 sec'),

  ],

  [
    wk('assets/sr.gif', 'side arm raise 10min'),
    wk('assets/jj.gif','jumping jacks 20 sec'),

  ]
];

