require 'faker'

#Customer
15.times do
  Customer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8, max_length: 20)
  )
end
#Seller
seller_data = [
  {
    name: "John Doe",
    email: "john.doe@example.com",
    password: "jdsecretpass",
    shop_name: "Tech Gadgets Store"
  },
  {
    name: "Alice Smith",
    email: "alice.smith@example.com",
    password: "aspsecretpass",
    shop_name: "Mac & More"
  },
  {
    name: "Robert Johnson",
    email: "robert.johnson@example.com",
    password: "rjsecretpass",
    shop_name: "Beauty zone"
  },
  {
    name: "Emily Davis",
    email: "emily.davis@example.com",
    password: "edsecretpass",
    shop_name: "Beauty & Health Haven"
  },
  {
    name: "Michael Lee",
    email: "michael.lee@example.com",
    password: "mlsecretpass",
    shop_name: "Electronics Hub"
  },
  {
    name: "Sarah Johnson",
    email: "sarah.johnson@example.com",
    password: "sjsecretpass",
    shop_name: "Hair & Body Essentials"
  },
  {
    name: "David Wilson",
    email: "david.wilson@example.com",
    password: "dwsecretpass",
    shop_name: "Pet Paradise"
  },
  {
    name: "Jennifer Brown",
    email: "jennifer.brown@example.com",
    password: "jbsecretpass",
    shop_name: "Outdoor Decor & More"
  },
  {
    name: "William Turner",
    email: "william.turner@example.com",
    password: "wtsecretpass",
    shop_name: "Home & Office Supplies"
  },
  {
    name: "Linda Martinez",
    email: "linda.martinez@example.com",
    password: "lmsecretpass",
    shop_name: "Office Haven"
  },
  {
    name: "Daniel Anderson",
    email: "daniel.anderson@example.com",
    password: "dasecretpass",
    shop_name: "Toys & More "
  },
  {
    name: "Karen Scott",
    email: "karen.scott@example.com",
    password: "kssecretpass",
    shop_name: "Kids Paradise Clothes"
  },
  {
    name: "Richard Baker",
    email: "richard.baker@example.com",
    password: "rbsecretpass",
    shop_name: "Men's Fashion"
  },
  {
    name: "Susan Edwards",
    email: "susan.edwards@example.com",
    password: "sesecretpass",
    shop_name: "Fashion Fusion Unisex Store"
  },
  {
    name: "Christopher Young",
    email: "christopher.young@example.com",
    password: "cysecretpass",
    shop_name: "Women's Fashion Boutique"
  }
]
seller_data.each do |seller_data|
  Seller.create!(seller_data)
end

    #Shop
    shop_data = [
  {
    name: "Tech Gadgets Store",
    seller_id: 1,
    description: "We offer the latest and greatest tech gadgets, from smartphones to smart home devices."
  },
  {
    name: "Electronic Hub",
    seller_id: 5,
    description: "Find all your electronic needs here, from laptops to gaming consoles."
  },
  {
    name: "Mac & More",
    seller_id: 2,
    description: " Your ultimate destination for cutting-edge tech, accessories and Apple products!"
  },
  {
    name: "Beauty zone",
    seller_id: 3,
    description: "Get beautiful wigs, hair & more."
  },
  {
    name: "Beauty & Health Haven",
    seller_id: 4,
    description: " We have everything you need to enhance your natural beauty and feel confident every day."
  },
  
  {
    name: "Hair & Body Essentials",
    seller_id: 6,
    description: "From stunning wigs to hair essentials and more."
  },
  {
    name: "Pet Paradise",
    seller_id: 7,
    description: "Everything you need for your furry friends, from food to toys and grooming supplies."
  },
  {
    name: "Outdoor Decor & More",
    seller_id: 8,
    description: "Brightening up your space."
  },
  {
    name: "Home & Office Supplies",
    seller_id: 9,
    description: "Equip your home with the finest and latest!"
  },
  {
    name: "Office Haven",
    seller_id: 10,
    description: "Discover unique home & office supplies"
  },
  {
    name: "Kids Paradise Clothes",
    seller_id: 12,
    description: "Cute and adorable trendy clothes for you little one."
  },
  {
    name: "Toys & More ",
    seller_id: 11,
    description: "Bring joy to kids of all ages with our wide selection of fun and educational toys."
  },
  
  {
    name: "Men's Fashion",
    seller_id: 13,
    description: "At Men's Fashion, we cater to the modern man who seeks both style and functionality in his attire."
  },
  {
    name: "Fashion Fusion Unisex Store",
    seller_id: 14,
    description: "We have a little something for everyone."
  },
  {
    name: "Women's Fashion Boutique",
    seller_id: 15,
    description: "Explore your unique personality with our diverse fashion collection."
  }
]
shop_data.each do |shop_data|
  Shop.create!(shop_data)
end
      
    #Category data

    category_data = [
        { name: "Women's Fashion" },
        { name: "Men's Fashion" },
        { name: "Kids & Toys" },
        { name: "Home & Office" },
        { name: "Pet & Outdoor" },
        { name: "Beauty, Health & Hair" },
        { name: "Electronics & Accessories" }
      ]
      
      category_data.each do |category_data|
        Category.create!(category_data)
      end
      

      #PRODUCT
  product_data = [

    {
        name: 'Puffer Phone case',
        shop_id: 1,
        description: 'Our everyday, flexible essential - Water-resistant with raised edges for added screen and camera protection.',
        price: 2000,
        image: ['https://i.pinimg.com/564x/e6/ce/c0/e6cec0d8c628487bd8bb4758e45e81ee.jpg',
                'https://i.pinimg.com/564x/91/b1/8b/91b18bd8bc1b29a32b5b707c1d2d5271.jpg',
                'https://i.pinimg.com/474x/89/33/4a/89334a05b816d0f9eeeedad1c839b657.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'case'],
        variations: [
          { name: 'Color', value: ['Black', 'Green', 'Pink'] }
        ]
      },
      {
        name: 'Charger Cable Protector Cord ',
        shop_id: 1,
        description: 'Protective Charging Charger Cable Protector Cord Saver for Universal',
        price: 500,
        image: 'https://i.pinimg.com/564x/98/a4/ba/98a4ba922d38242257c9f12d21efc6c9.jpg',
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'charger', 'cable protector'],
        variations: [
          { name: 'Color', value: ['Purple', 'Pink', 'Yellow', 'Green', 'Blue', 'Orange'] }
        ]
      },
      {
        name: 'Silicone Case',
        shop_id: 1,
        description: 'Display size: 6.1 inches.A soft microfiber lining on the inside helps protect your iPhone.',
        price: 1500,
        image: ['https://i.pinimg.com/564x/d1/71/65/d171658e12621727cafb88eaf99358f7.jpg',
        'https://i.pinimg.com/474x/84/c2/df/84c2dfce662bc24513ef49f81344150b.jpg',
        'https://i.pinimg.com/474x/2d/5b/9b/2d5b9b853c8408d42747147e562f5f5d.jpg'],
        availability: false,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'case'],
        variations: [
          { name: 'Color', value: ['White', 'Dark Blue', 'Green'] }
        ]
      },
      {
        name: 'Puffy Laptop Pouch',
        shop_id: 2,
        description: '16-inch. The ultimate accessory to keep your laptop safe and stylishly snug. Crafted with a cushioned and padded interior, this pouch offers superior protection against bumps, scratches, and dust.',
        price: 3000,
        image: ['https://i.pinimg.com/474x/76/81/bc/7681bcaab1449bf6970bd01df3eadaa9.jpg',
        'https://i.pinimg.com/474x/8d/7c/a2/8d7ca22b1cbce6f9440b4d357418371d.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['laptop', 'laptop sleeve'],
        variations: [
          { name: 'Color', value: ['Yellow', 'Purple'] }
        ]
      },
      
      {
        name: 'AirPods Pro',
        shop_id: 2,
        description: '2nd Generation',
        price: 2500,
        image: 'https://i.pinimg.com/474x/ab/68/1d/ab681de3be239553cd7ea3d411b57f82.jpg',
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['airpods', 'apple'],
        variations: [
          { name: 'Color', value: 'White' }
        ]
      },
      {
        name: 'Headphones',
        shop_id: 2,
        description: 'Collar ABS Plain Gaming-Headsets Embellished Audio & Video',
        price: 4000,
        image: ['https://i.pinimg.com/564x/f7/fd/32/f7fd32edc6574e7c2f1fa5093f746b3c.jpg',
        'https://i.pinimg.com/474x/79/90/90/7990908e7ae6f42a30468e9ad919fe70.jpg',
        'https://i.pinimg.com/474x/43/6d/e9/436de9a374ed6f7477bc410455691ed2.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'headphone'],
        variations: [
          { name: 'Color', value: ['Cream', 'White','Green'  ]}
        ]
      },
      {
        name: 'JBL Tune 510',
        shop_id: 3,
        description: 'Wireless Headphones',
        price: 2000,
        image:[ 'https://i.pinimg.com/474x/3f/dd/91/3fdd91cb31bdfac7027d72459f5170ff.jpg',
        'https://i.pinimg.com/474x/44/71/cb/4471cb458d458d04fdbef3eb4da0d7c9.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'headphone'],
        variations: [
          { name: 'Color', value: ['Rose Gold', 'Black'] }
        ]
      },
      {
        name: 'Mini speaker',
        shop_id: 3,
        description: 'Bluetooth portable speaker',
        price: 3000,
        image: ['https://i.pinimg.com/564x/eb/91/6a/eb916a85407180161df9663a6241c75d.jpg',
        'https://i.pinimg.com/474x/00/92/74/009274a8f5c887da58dc858b03532a93.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['speaker', 'wireless'],
        variations: [
          { name: 'Color', value: ['Pink', 'Purple'] }
        ]
      },
      {
        name: 'Type C Charger',
        shop_id: 3,
        description: 'Fast Charger iPhone Type C Charger USB C. Lightning Cable 20W Apple Charger.',
        price: 4500,
        image: 'https://i.pinimg.com/474x/85/87/d4/8587d4a5d360a17fb7c6359d9383c9f2.jpg',
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'case'],
        variations: [
          { name: 'Size', value: 'Standard' }
        ]
      },
      {
        name: 'Portable Laptop Stand',
        shop_id: 1,
        description: ' Adjustable, Foldable Laptop Stand ',
        price: 700,
        image: ['https://i.pinimg.com/474x/fe/c1/03/fec10347e7a355ff2ce67b15121eb974.jpg',
        'https://i.pinimg.com/474x/14/30/33/1430339096f8670c4b15eba0bd67c0b2.jpg'],
        availability: true,
        category: 'Electronics & Accessories', 
        tags: ['phone', 'case'],
        variations: [
          { name: 'Size', value: 'Standard' }
        ]
      },

   # Beauty, Health & Hair
   {
    name: 'Short Bob Wig',
    shop_id: 4,
    description: 'Hair Material: 100% Virgin Human Hair Wig, Short Bob Hair Wigs, Can be Dyed and Ironed by your favor.',
    price: 2000,
    image: 'https://i.pinimg.com/564x/9a/a1/fa/9aa1fa39a48581d8a8c0dedd8c2e6d0d.jpg',  
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['hair', 'wig'],
    variations: [
      { name: 'Color', value: 'Black' },
      { name: 'Length (in)', value: [10, 12] }
    ]
  },
  {
    name: 'Got2b Styling Gel',
    shop_id: 4,
    description: "Delivers hold so strong (it’s wind-tunnel tested) your style will last until your next shampoo. And of course, (we wouldn’t forget this part) it’s water resistant.",
    price: 850,
    image: 'https://i.pinimg.com/474x/f0/1f/53/f01f53e7833abff1f12b69d2aeb465da.jpg',
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['hair', 'wig', 'glue'],
    variations: [
      { name: 'Size', value: '150 ml' }
    ]
  },
  {
    name: 'Remington Style Flatiron',
    shop_id: 4,
    description: 'Therapy frizz flatiron',
    price: 2000,
    image: 'https://i.pinimg.com/474x/bc/fb/4a/bcfb4ad85cfeec0cd2a0c6dd908d0692.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['hair', 'wig'],
    variations: [
      { name: 'Color', value: 'Silver' }
    ]
  },
  {
    name: 'Collagen Gummies',
    shop_id: 5,
    description: 'Extra strength, supports hair, skin & nails ',
    price: 2000,
    image: 'https://i.pinimg.com/474x/f0/bf/b3/f0bfb3948f3213ce852444cb2c9a9dca.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['supplements', 'gummies', 'collagen'],
    variations: [
      { name: 'Gummies', value: '60' }
    ]
  },
  {
    name: 'Balanced Belly Probiotic',
    shop_id: 5,
    description: 'OLLY PROBIOTIC + PREBIOTIC: These chewable adult probiotics deliver a powerful combination of live Probiotics and Prebiotic Fiber to help keep your natural flora and digestion balance',
    price: 1500,
    image: 'https://i.pinimg.com/474x/53/e0/1b/53e01bc07046b884a706b4a44e72e063.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['supplements', 'gummies', 'probiotic'],
    variations: [
      { name: 'Gummies', value: 30 }
    ]
  },
  {
    name: 'vitamin C potency+',
    shop_id: 5,
    description: 'Dietary supplement ',
    price: 1700,
    image: 'https://i.pinimg.com/474x/2c/cd/90/2ccd9025f3c0e97f5d766bd227cdd44f.jpg',    
    availability: false,
    category: 'Beauty, Health & Hair', 
    tags: ['supplements', 'gummies', 'vitamin', 'diet'],
    variations: [
      { name: 'Capsules', value: 60 }
    ]
  },
  {
    name: 'vitamin C Serum',
    shop_id: 6,
    description: 'Radha Beauty Natural Vitamin C Serum for Face, 60mL - 20% Organic Vitamin C + Vitamin E + Hyaluronic Acid, Facial Serum for Anti-Aging, Wrinkles, and Fine Lines ',
    price: 1650,
    image: 'https://i.pinimg.com/564x/e5/48/c8/e548c81a73327bcb4f6748729641e3da.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['serum', 'skin', 'vitamin c'],
    variations: [
      { name: 'Size', value: '60 ml' }
    ]
  },
  {
    name: 'Face Roller',
    shop_id: 6,
    description: 'Designed to Reduce Puffiness and Improve Wrinkles, Massage Tools for Your face and Body Treatment.',
    price: 2300,
    image: 'https://i.pinimg.com/474x/07/91/14/079114b36278f9a900fcc991cebb8631.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['face', 'roller', 'skin'],
    variations: [
      { name: 'Size', value: 'Standard' }
    ]
  },
  {
    name: 'Falsies Eyelashes',
    shop_id: 6,
    description: 'Cat eye false eyelashes full strip',
    price: 600,
    image: 'https://i.pinimg.com/474x/2e/a4/d2/2ea4d2b8d726a532b83e055ef5d7bcbf.jpg',    
    availability: true,
    category: 'Beauty, Health & Hair', 
    tags: ['supplements', 'gummies', 'vitamin', 'diet'],
    variations: [
      { name: 'Size', value: 'Genric' },
      { name: 'Quanity', value: '6 pairs' }
    ]
  },
   #Pet & Outdoor
   {
    name: 'Ceramic Dog Bowl',
    shop_id: 7,
    description: 'Ceramic dog bowl and bamboo wood stand.',
    price: 3500,
    image: 'https://i.pinimg.com/736x/b8/ca/0f/b8ca0ff53ab4bc806de215c01d607c4d.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['pet', 'outside', 'play'],
    variations: [
      { name: 'Size', value: ['400 ml', '850ml'] }
    ]
  },
  {
    name: 'Mouse Squeak Toy',
    shop_id: 7,
    description: 'Cute, small, lightweight, funny.',
    price: 350,
    image: 'https://i.pinimg.com/564x/cb/5a/18/cb5a1811f43b35c758c5a3409c62aae1.jpg',    
    availability: false,
    category: 'Pet & Outdoor', 
    tags: ['pet', 'outside', 'toy'],
    variations: [
      { name: 'Color', value: ['Orange', 'Red', 'Black'] }
    ]
  },
  {
    name: 'Chew Toy',
    shop_id: 7,
    description: 'Chew Toy Remove Bad Breath Cleaning Dog Tooth Toy For Small Puppy',
    price: 3500,
    image: 'https://i.pinimg.com/564x/72/70/fb/7270fb20c5ca0eeff8d8d8f91cad1939.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['pet', 'outside', 'play'],
    variations: [
      { name: 'Color', value: ['Blue', 'Pink', 'Yellow'] }
    ]
  },
  {
    name: 'Pet Basket Bed',
    shop_id: 7,
    description: 'Ceramic dog bowl and bamboo wood stand.',
    price: 1500,
    image: 'https://i.pinimg.com/564x/5a/74/22/5a74226753a2af0b6250a7f582830e25.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['pet', 'outside', 'play'],
    variations: [
      { name: 'Size', value: ['small', 'medium', 'large'] }
    ]
  },
  {
    name: 'Fairy Lights',
    shop_id: 8,
    description: '33 Feet 100 Led Outdoor Fairy Lights Battery Operated with Remote',
    price: 900,
    image: 'https://i.pinimg.com/474x/e5/c5/29/e5c52986fd3206b1a79e3e2475834a9a.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['outdoor', 'lights', 'decor'],
    variations: [
      { name: 'Size', value: 'Standard' }
    ]
  },
  {
    name: 'Spiral Planter',
    shop_id: 8,
    description: 'Spiral Flower Pot, one of a kind Pottery planter handmade, Brightly colored, and spiral shaped planter pots that comes with the drainage hole. ',
    price: 1000,
    image: 'https://i.pinimg.com/564x/67/43/1f/67431fc201d17d5a4d0723e3d506f316.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['pottery', 'planter', 'flower'],
    variations: [
      { name: 'Size', value: ['small', 'medium', 'large'] }
    ]
  },
  {
    name: 'Patio Table',
    shop_id: 8,
    description: 'Wooden Square Foldable Table',
    price: 6000,
    image: 'https://i.pinimg.com/564x/5a/74/22/5a74226753a2af0b6250a7f582830e25.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['table', 'patio', 'wooden'],
    variations: [
      { name: 'Size', value: 'Standard' }
    ]
  },
  {
    name: 'Retro Barrel',
    shop_id: 8,
    description: "Oh, snap! Our two-gallon Retro Barrel of Fun is ready to party like it’s 1992",
    price: 3750,
    image: 'https://i.pinimg.com/564x/61/fb/ca/61fbca4f2bce1f314fdcc85b187df325.jpg',    
    availability: true,
    category: 'Pet & Outdoor', 
    tags: ['pet', 'outside', 'play'],
    variations: [
      { name: 'Size', value: '2 Gallon' }
    ]
  },
#Home & Office
{
  name: 'Bino Mini Trash Can',
  shop_id: 9,
  description: 'Super cute pastel trash can',
  price: 550,
  image: 'https://i.pinimg.com/474x/fe/e4/8b/fee48bb8ed535933db041df417b5db2e.jpg',    
  availability: true,
  category: 'Home & Office', 
  tags: ['home', 'decor', 'trash can'],
  variations: [
    { name: 'Size', value: 'Standard' }
  ]
},
{
  name: 'Velvet Hangers',
  shop_id: 9,
  description: '30-pack, non-slip clothes hanger',
  price: 1750,
  image: 'https://i.pinimg.com/564x/0d/0c/59/0d0c599b1068b17f0ec95b6eb5707d6d.jpg',    
  availability: false,
  category: 'Home & Office', 
  tags: ['home', 'decor', 'play'],
  variations: [
    { name: 'Color', value: 'Light Pink' }
  ]
},
{
  name: 'Vintage Throw Blanket',
  shop_id: 9,
  description: 'Beautiful chunky knit, Vintage White colored blanket and throw in super soft chenille yarn that is machine washable!',
  price: 1800,
  image: 'https://i.pinimg.com/564x/ca/5c/57/ca5c577f9f52cd2144afd6af96f4d9e0.jpg',    
  availability: true,
  category: 'Home & Office', 
  tags: ['home', 'decor', 'blanket'],
  variations: [
    { name: 'Size', value: 'Standard' }
  ]
},
{
  name: 'Glasses With Straw',
  shop_id: 9,
  description: 'Drinking glass set includes 4 can-shaped old fashioned glasses [ Diameter - 3 inches, Height - 5.8 inches ],4 reusable glass straws and 2 cleaning brushes',
  price: 2750,
  image: 'https://i.pinimg.com/564x/61/fb/ca/61fbca4f2bce1f314fdcc85b187df325.jpg',    
  availability: true,
  category: 'Home & Office', 
  tags: ['home', 'decor', 'kitchen'],
  variations: [
    { name: 'Size', value: '4 pcs' }
  ]
},
{
  name: 'Stapler Set',
  shop_id: 10,
  description: '3 pcs Stapler Set with 200 staples and 20 pcs paper clips. Portable and Cute! ',
  price: 470,
  image: 'https://i.pinimg.com/564x/65/44/48/654448b47bd47c9617ce854ec180d69b.jpg',    
  availability: false,
  category: 'Home & Office', 
  tags: ['office', 'stationary', 'work'],
  variations: [
    { name: 'Size', value: '1 pack' }
  ]
},
{
  name: 'Mini Desktop Trash Bin',
  shop_id: 10,
  description: 'Mini Desk Trash Can with Rocking Lid, Small Bin for Home, Kitchen, Bathroom, Office',
  price: 250,
  image: 'https://i.pinimg.com/474x/c4/0f/61/c40f6102f5a7d095b019632a48e14610.jpg',    
  availability: true,
  category: 'Home & Office', 
  tags: ['office', 'trash can', 'desktop'],
  variations: [
    { name: 'Color', value: ['Blue', 'Pink', 'White', 'Purple'] }
  ]
},
{
  name: 'Desktop Pad',
  shop_id: 10,
  description: 'Protects your desk or table, shielding the surface from scratches and damage caused by daily use.',
  price: 600,
  image: ['https://i.pinimg.com/564x/87/11/4b/87114b21ab7eccb01eff76b6441491f6.jpg',  
'https://i.pinimg.com/474x/44/3e/7c/443e7c4b69b39cc88489acd36c28d89c.jpg'],
  availability: true,
  category: 'Home & Office', 
  tags: ['office', 'decor', 'home'],
  variations: [
    { name: 'Color', value: 'Cream' }
  ]
},
{
  name: 'Wireless Mouse',
  shop_id: 10,
  description: 'Make any space minimalist, modern, and silent with Logitech Pebble the portable mouse that fits your curated lifestyle and goes wherever life takes you. The smooth organic shape fits in your pocket, bag, and feels great in your hand.',
  price: 1950,
  image: ['https://i.pinimg.com/474x/67/87/86/678786603c7566869147fa3dbf5bcf85.jpg',
'https://i.pinimg.com/474x/cd/93/ca/cd93ca558f2ccd53b4fee1647679f054.jpg',
'https://i.pinimg.com/564x/c5/db/f2/c5dbf299fb6fbc9a623a6bd9bc3b2a17.jpg'],
  availability: true,
  category: 'Home & Office', 
  tags: ['office', 'stationary', 'mouse'],
  variations: [
    { name: 'Color', value: ['Green', 'Pink', 'White'] }
  ]
},
#Kids & Toys
{
  name: 'Kniiter Sweater',
  shop_id: 11,
  description: 'Sweaters knitted in Special Aran. Choose any pattern, panel, neckband or collar.',
  price: 950,
  image: 'https://i.pinimg.com/564x/5c/de/77/5cde777855b5dab5b1b0ce53f6ce2d2e.jpg',
  availability: false,
  category: 'Kids & Toys', 
  tags: ['kids', 'clothes', 'shoes'],
  variations: [
    { name: 'Color', value: ['Pink', 'White','Grey','Blue'] },
    { name: 'Size', value: ['0-2 months', '2-6 months','6-12 months','1-2 years'] }
  ]
},
{
  name: 'Adidas Super 360 Sneakers',
  shop_id: 11,
  description: 'Black and White, Comfortable and durable kids sneakers',
  price: 2950,
  image: 'https://i.pinimg.com/564x/1c/7b/53/1c7b535b108e9dcb107c68c21a4cf9e8.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'clothes', 'shoes'],
  variations: [
    { name: 'Size', value: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] }
  ]
},
{
  name: 'Rainbow Summer Dress',
  shop_id: 11,
  description: 'The rainbow dress for girls are made of cotton,super soft, saft to skin,sleeveless design is perfect for hot summer time',
  price: 999,
  image: 'https://i.pinimg.com/474x/14/0b/49/140b49a83a5550acbc5d3bd13107ef35.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'clothes', 'shoes'],
  variations: [
    { name: 'Color', value: ['Green', 'Pink', 'White'] }
  ]
},

{
  name: 'Leather Strap Sandals',
  shop_id: 11,
  description: 'Rounded toe Leather cut Toothed rubber sole Ankle bracelet Velcro fastening',
  price: 1300,
  image: 'https://i.pinimg.com/474x/32/04/60/320460a428ebc5fcee909dd13111f970.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'clothes', 'shoes'],
  variations: [
    { name: 'Size', value: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] }
  ]
},

{
  name: 'Coffee Maker Toy',
  shop_id: 12,
  description: 'Our interactive toy coffee maker set accessories for kids include 1 wooden coffee maker, 1 coffee filter, 1 milk jug, 2 cups, 2 coasters, 1 cake, 1 cake plate, 2 coffee slices, 4 coffee capsules, 1 spoon, and 1 menu. The rich coffee machine toy accessories are perfect for kids barista role-playing games. ',
  price: 3000,
  image: 'https://i.pinimg.com/564x/67/fd/a7/67fda79dd7c356f27e695b1c2dd94609.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'toys', 'play'],
  variations: [
    { name: 'Size', value: 'Standard' }
  ]
},
{
  name: 'Mermaid Doll',
  shop_id: 12,
  description: 'Imaginations can dive into storytelling with Barbie Dreamtopia Twinkle Lights Mermaid Doll featuring a magical light-up feature!',
  price: 1750,
  image: 'https://i.pinimg.com/564x/1b/91/66/1b9166c7ba8f56fe7d14ee47932ac7cc.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'toys', 'play'],
  variations: [
    { name: 'Size', value: 'Standard' }
  ]
},
{
  name: 'Jump Rope',
  shop_id: 12,
  description: "EASILY ADJUSTABLE ROPE - Easily adjusted from 9 ft down to your desired length within minutes. Manufactured from solid 'scuff-resistant' 4.5 mm PVC cord.",
  price: 900,
  image: 'https://i.pinimg.com/564x/81/e5/60/81e560d52fdfe82362c5675dc3096de2.jpg',
  availability: false,
  category: 'Kids & Toys', 
  tags: ['kids', 'toys', 'play'],
  variations: [
    { name: 'Size', value: '2 pack' }
  ]
},
{
  name: 'Football Ball',
  shop_id: 12,
  description: 'Black and white football ball, Classic Round. ',
  price: 1950,
  image: 'https://i.pinimg.com/564x/ff/fa/26/fffa269226b5c52707609983ec7e7d4c.jpg',
  availability: true,
  category: 'Kids & Toys', 
  tags: ['kids', 'toys', 'play'],
  variations: [
    { name: 'Size', value: 'Standard' }
  ]
},
#Men's Fashion
{
  name: 'Balance 550 Navy Blue',
  shop_id: 13,
  description: 'The New Balance 550 Navy Blue features a white smooth leather upper with perforated overlays and a grey suede toe wrap.',
  price: 2200,
  image: 'https://i.pinimg.com/564x/b2/6a/74/b26a74eb0dd52bc7c5c9c35f565d5bad.jpg',
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'shoes'],
  variations: [
    { name: 'Size', value: [5, 6, 7, 8, 9] }
  ]
},
{
  name: 'Leather Formal Dress Shoes',
  shop_id: 13,
  description: 'Microfiber leather outsole, breathable casual formal dress shoes',
  price: 1950,
  image: 'https://i.pinimg.com/564x/83/af/be/83afbefdb9beae8a3515a656fcc6ea39.jpg',
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'shoes'],
  variations: [
    { name: 'Size', value: [8, 9, 10, 11, 12] }
  ]
},
{
  name: 'Retro Alphabeet Sweater',
  shop_id: 14,
  description: 'Japanese Retro Alphabet Stars Crew Sweater Pullover High Street Oversize Loose Autumn Sweater',
  price: 800,
  image: 'https://i.pinimg.com/564x/83/af/be/83afbefdb9beae8a3515a656fcc6ea39.jpg',
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'sweater', 'sweatshirt'],
  variations: [
    { name: 'Size', value: 'L' }
  ]
},
{
  name: 'Steel Cargo Pants',
  shop_id: 14,
  description: "Men's work pants made with CORDURA® fabric for uninhibited movement and unmatched durability.",
  price: 2400,
  image: 'https://i.pinimg.com/564x/83/af/be/83afbefdb9beae8a3515a656fcc6ea39.jpg',
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'pants', 'cargo'],
  variations: [
    { name: 'Size', value:[ 'M','L','XL'] },
    { name: 'Color', value: 'Black' }
  ]
},
{
  name: 'Eventura Shirt',
  shop_id: 14,
  description: "When summer bliss and laid-back spirit meet, a shirt like this emerges. Crafted from 100% cotton for excellent style and endless combination possibilities.",
  price: 2400,
  image: ['https://i.pinimg.com/564x/a9/7f/62/a97f6234877f53762645378b38ace30e.jpg',
  'https://i.pinimg.com/474x/8f/a4/03/8fa40302334321eec16941730fa2576a.jpg'],
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'shirts', 'style'],
  variations: [
    { name: 'Size', value:[ 'S','M','L','XL'] },
    { name: 'Color', value: ['Cream', 'Green'] }
  ]
},
{
  name: 'Corduroy Short Sleeve  Shirt',
  shop_id: 14,
  description: "Mens Contrast Color Corduroy Short Sleeve Loungewear",
  price: 1500,
  image: [
    "https://i.pinimg.com/564x/9a/94/e3/9a94e34a4a2f00489db0b64d439b7c8a.jpg",
    "https://i.pinimg.com/474x/5b/a6/a6/5ba6a696ed2d6075d737800606302dcf.jpg"
],
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'shirts', 'style'],
  variations: [
    { name: 'Size', value:[ 'S','M','L','XL'] },
    { name: 'Color', value: ['Brown', 'Blue'] }
  ]
},
{
  name: 'Sweatpants',
  shop_id: 14,
  description: "Stay comfortable and casual with these Solid Color Sweatpants.",
  price: 900,
  image: 'https://i.pinimg.com/736x/fd/31/63/fd3163f11856b3446db13a666e18ce63.jpg',
  availability: true,
  category: "Men's Fashion", 
  tags: ['men', 'pants', 'sweatpants'],
  variations: [
    { name: 'Size', values: ['M', 'L', 'XL', 'XXL'] },
    { name: 'Color', values: ['Dark Grey'] } 
  ]
},

#Women's Fashion
{
  name: 'Summer Floral Dress',
  shop_id: 14,
  description: "Summer Floral bohemian spaghetti strap button down swing midi dress.", 
  price: 1000,
  image: 'https://i.pinimg.com/564x/e0/dc/ff/e0dcff3d2b8011a6021970cc363f415b.jpg',
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'dress', 'summer'],
  variations: [
    { name: 'Size', values: ['S', 'M', 'L', 'XL', 'XXL'] },
    { name: 'Color', values: ['Yellow'] }
  ]
},

{
  name: 'Scarlet Dress',
  shop_id: 14,
  description: "Scarlet darkness summer dress square neck sleeveless high low fairy dress steampunk dress.", 
  price: 1900,
  image: ['https://i.pinimg.com/564x/f0/78/23/f07823b5424cf634d390940b047a9b4c.jpg', 'https://i.pinimg.com/474x/52/ba/f2/52baf27319958869707972aaad57c40b.jpg'], 
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'dress', 'summer'],
  variations: [
    { name: 'Size', values: ['S', 'M', 'L', 'XL', 'XXL'] },
    { name: 'Color', values: ['Green', 'Purple'] } 
  ]
},

{
  name: 'Mlouye',
  shop_id: 15,
  description: "Small Convertible Flap Bag ",
  price: 9000,
  image: 'https://i.pinimg.com/564x/13/77/8a/13778ac18355f0887cfc22ac586f6ab8.jpg',
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'handbag', 'minimal'],
  variations: [
    { name: 'Size', value: 'Standard'},
    { name: 'Color', value: 'Tan' }
  ]
},
{
  name: 'High Waist Pants',
  shop_id: 15,
  description: "Crafted from a lightweight polyester fabric with a slight stretch, these pants feature a high waist, front flat style, button fly closure, and button decoration detail.",
  price: 1100,
  image: 'https://i.pinimg.com/474x/1c/ed/91/1ced91316eb57c7782c9dbbc8f379c1d.jpg',
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'pants', 'pencil'],
  variations: [
    { name: 'Size', value: [ 'S','M','L','XL', 'XXL']},
    { name: 'Color', value: 'Blue' }
  ]
},
{
  name: 'UGG Classic',
  shop_id: 15,
  description: "The cute and cozy slip-on-and-go UGG Classic Ultra Mini ankle boot.",
  price: 3000,
  image: 'https://i.pinimg.com/564x/7f/cd/74/7fcd74be79cbe9fb61669fa47445f680.jpg',
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'boots', 'ugg'],
  variations: [
    { name: 'Size', value: [ 5, 6, 7, 8, 9]},
    { name: 'Color', value: 'Chestnunt' }
  ]
},
{
  name: 'Two-Piece Sweater Suit',
  shop_id: 15,
  description: "Two-piece casual hooded sweater suit. 100% high-quality craftsmanship ✨Selected high-quality fabrics.",
  price: 1300,
  image: ['https://i.pinimg.com/564x/b7/99/d4/b799d4fd7acacda5f74b192c9087f821.jpg',
  'https://i.pinimg.com/474x/5a/17/b2/5a17b24d5f2ba30896f31712c36f6566.jpg'],
  availability: true,
  category: "Women's Fashion", 
  tags: ['women', 'boots', 'ugg'],
  variations: [
    { name: 'Size', value: [ 'S','M','L','XL', 'XXL']},
    { name: 'Color', value: ['Black','Light Brown'] }
  ]
},
]

product_data.each do |product_attrs|
    images = product_attrs.delete(:images)
    tags = product_attrs.delete(:tags)
    variations_data = product_attrs.delete(:variations) # Renamed from `variations` to `variations_data`
    category_name = product_attrs.delete(:category)
    product = Product.create!(product_attrs)
  
    # Associate the product with the specified category (tag) if it exists
    if category_name
      category = Category.find_or_create_by(name: category_name)
      product.categories << category
    end
  
    # Set the tags attribute for the product
    product.update(tags: tags)
  
    # Create multiple photos for the product using the images array
    if images.present?
      images.each do |image_url|
        product.photos.create!(image_url: image_url)
      end
    else
      puts "No images found to create photos."
    end
  
    # Create variations for the product
    if variations_data.present?
      variations_data.each do |variation_attrs|
        values = variation_attrs.delete(:values) # Extract the values from the variation_attrs
        variation = product.variations.create!(variation_attrs)
        variation.update(values: values) # Assign the values to the variation
      end
    end
  end
  
  

#Cart
15.times do
  Cart.create!(
    customer_id: rand(1..15),
    status: ['pending', 'completed', 'cancelled'].sample
  )
end

#Cart items
15.times do
  CartItem.create!(
    cart_id: rand(1..15),
    product_id: rand(1..15),
    quantity: rand(1..15)
  )
end

#Order data
15.times do
    Order.create!(
      customer_id: rand(1..10),  # Use random customer_id
      quantity: rand(1..10),
      total_price: rand(10..100),
      status: ["processing", "completed", "cancelled"].sample,
      payment_method: ["credit_card", "paypal", "cash_on_delivery"].sample,
      shipping_adress: Faker::Address.full_address,  # Correct attribute name
      date: Faker::Date.between(from: 360.days.ago, to: Date.today)
    )
  end



