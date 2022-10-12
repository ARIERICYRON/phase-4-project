require 'faker'
puts "Seeding begin ......."

# users
user_one = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user_two = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user_three = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user_four = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
user_five = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)

# suppliers
supplier = Supplier.create(name: Faker::Name.name, quantity_left: rand(1...9))
9.times do Supplier.create(name: Faker::Name.name, quantity_left: rand(1...9))
end

# products 
p_1 = Product.create(title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops", image_url: "https://pyxis.nymag.com/v1/imgs/05d/b15/f4c61238a24a34610ae3a41dede1df90a4-Gildan-black-tshirt.2x.rsquare.w600.jpg", description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday", price: Faker::Commerce.price, supplier_id: supplier.id)
p_2 = Product.create(title: "Mens Casual Premium Slim Fit T-Shirts", image_url: "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg", description: "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.", price: Faker::Commerce.price, supplier_id: supplier.id)
p_3 = Product.create(title: "Mens Cotton Jacket", image_url: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg", description: "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.", price: Faker::Commerce.price, supplier_id: supplier.id)
p_4 = Product.create(title: "DANVOUY Womens T Shirt Casual Cotton Short", image_url: "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg", description: "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.", price: Faker::Commerce.price, supplier_id: supplier.id)
p_5 = Product.create(title: "Opna Women's Short Sleeve Moisture", image_url: "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg", description: "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort", price: Faker::Commerce.price, supplier_id: supplier.id)
p_6 = Product.create(title: "MBJ Women's Solid Short Sleeve Boat Neck V", image_url: "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg", description: "95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem", price: Faker::Commerce.price, supplier_id: supplier.id)
p_7 = Product.create(title: "Rain Jacket Women Windbreaker Striped Climbing Raincoats", image_url: "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg", description: "Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn't overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.", price: Faker::Commerce.price, supplier_id: supplier.id)
p_8 = Product.create(title: "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket", image_url: "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg", description: "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON", price: Faker::Commerce.price, supplier_id: supplier.id)
p_9 = Product.create(title: "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats", image_url: "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg", description: "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates", price: Faker::Commerce.price, supplier_id: supplier.id)
3.times do Product.create(title: "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats", image_url: "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg", description: "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates", price: Faker::Commerce.price, supplier_id: supplier.id)
end
3.times do Product.create(title: "Mens Cotton Jacket", image_url: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg", description: "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.", price: Faker::Commerce.price, supplier_id: supplier.id)
end
3.times do Product.create(title: "Opna Women's Short Sleeve Moisture", image_url: "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg", description: "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort", price: Faker::Commerce.price, supplier_id: supplier.id)
end
2.times do Product.create(title: "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket", image_url: "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg", description: "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON", price: Faker::Commerce.price, supplier_id: supplier.id)
end


# reviews
review_one = Review.create(review_content: "I like the product", user_id: user_one.id, product_id: p_1.id)
review_two = Review.create(review_content: "durable quality...", user_id: user_two.id, product_id: p_1.id)
review_three = Review.create(review_content: "I like the design of the product", user_id: user_three.id, product_id: p_1.id)
review_four = Review.create(review_content: "I like the product", user_id: user_one.id, product_id: p_2.id)
review_five = Review.create(review_content: "durable quality...", user_id: user_four.id, product_id: p_2.id)
review_six = Review.create(review_content: "I like the design of the product", user_id: user_five.id, product_id: p_2.id)
review_seven = Review.create(review_content: "I like the product", user_id: user_one.id, product_id: p_3.id)
review_eight = Review.create(review_content: "durable quality...", user_id: user_two.id, product_id: p_3.id)
review_nine = Review.create(review_content: "I like the design of the product", user_id: user_three.id, product_id: p_3.id)
review_ten = Review.create(review_content: "I like the product", user_id: user_four.id, product_id: p_4.id)
review_eleven = Review.create(review_content: "durable quality...", user_id: user_five.id, product_id: p_4.id)
review_twelve = Review.create(review_content: "I like the design of the product", user_id: user_one.id, product_id: p_4.id)
review_13 = Review.create(review_content: "I like the product", user_id: user_two.id, product_id: p_5.id)
review_14 = Review.create(review_content: "durable quality...", user_id: user_three.id, product_id: p_6.id)
review_15 = Review.create(review_content: "I like the design of the product", user_id: user_four.id, product_id: p_6.id)


puts "Seeding end ....."