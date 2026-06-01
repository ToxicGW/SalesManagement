-- Customers
INSERT INTO Customers VALUES(61,"Mario Pontes","Rio de Janeiro", "Br", 05454876, 554832783767);

INSERT INTO Customers VALUES(62,"Carlos Hernández","San Cristóbal", "ve", 5022, 584836587351);

INSERT INTO Customers VALUES(63,"Yoshi Latimer","Elgin", "us", 97827, 1483662964);

INSERT INTO Customers VALUES(64,"Patricia McKenna","Cork", "ie", 4418, 35383654113);

INSERT INTO Customers VALUES(65,"Helen Bennett","Cowes", "uk", 31721, 44836582889);

INSERT INTO Customers VALUES(66,"Philip Cramer","Brandenburg", "de", 14776, 594671582680);

INSERT INTO Customers VALUES(67,"Daniel Tonini","Versailles", "fr", 78000, 332936582172);

INSERT INTO Customers VALUES(68,"Annette Roulet","Toulouse", "fr", 31000, 33570582368);

INSERT INTO Customers VALUES(69,"Yoshi Tannamuri","Vancouver", "ca", 315291, 174802582793);

INSERT INTO Customers VALUES(70,"John Steel","Walla Walla", "us", 99362, 15536082185);

INSERT INTO Customers VALUES(71,"Renate Messner","Frankfurt", "de", 60528, 59495618252);



-- Employees
INSERT INTO Employees VALUES (001,"Adam Junior", '2004-04-16', "Sales Representative", "Direct Sales, Client Communication");

INSERT INTO Employees VALUES (002,"Prince Rupert", '1994-08-11', "Sales Manager", "Sales Strategy, Team Leadership");

INSERT INTO Employees VALUES (003,"Michael Jackson", '1958-08-29', "Order Processor", "Order Fulfillment, Data Entry");

INSERT INTO Employees VALUES (004,"Steven Blockbuster", '1988-05-07', "Customer Service Rep", "Customer Support, Conflict Resolution");

INSERT INTO Employees VALUES (005,"Janet Rocketlee", '1999-04-13', "Account Manager", "Relationship Management, Account Retention");

INSERT INTO Employees VALUES (006,"Mortis Magnifico", '2000-01-01', "Marketing Analyst", "Market Research, Sales Analytics");

INSERT INTO Employees VALUES (007,"Astolfo Romeo", '1978-12-15', "Logistics Coordinator", "Shipping Coordination, Delivery Tracking");



-- suppliers
INSERT INTO suppliers VALUES (1001,"Janine Labrune", 'Nantes France 44000', "Jani12lebo@gmail.com" , 3355096372);


INSERT INTO suppliers VALUES (1002,"Ann Devon", 'London UK 3615', "Ann64dev@yahoo.com" , 4499648230);


INSERT INTO suppliers VALUES (1003,"Roland Mendel", 'Graz Austria 8010', "Rolling77men@hotmail.com" , 43996457238);


INSERT INTO suppliers VALUES (1004,"Aria Cruz", 'Sao Paulo Brazil 05442', "Aria23Starc@mailio.com" , 5503117364);


INSERT INTO suppliers VALUES (1005,"Diego Roel", 'Madrid Spain 28034', "dieogoGG4@proton.com" , 34022638974);


INSERT INTO suppliers VALUES (1006,"Martine Rancé", 'Lille France 59000', "Martin99jr@email.com" , 33552341680);


INSERT INTO suppliers VALUES (1007,"Maria Larsson", 'Bracke Sweden 84467', "MariWal09@skype.com" , 46330546891);


INSERT INTO suppliers VALUES (1008,"Peter Franken", 'München Germany 80805', "Pet69frnk@yomail.com" , 49883460520);


INSERT INTO suppliers VALUES (1009,"Carine Schmitt", 'Nantes France 44000', "Carish44DDt@supmail.com" , 33759133405);


INSERT INTO suppliers VALUES (1010,"Paolo Accorti", 'Torino Italy 10100', "Polo100Accuracy@Automail.com" , 39705831444);



-- Categories
INSERT INTO Categories VALUES (101, "Beverages", NULL);

INSERT INTO Categories VALUES (102, "Kebablar", NULL);

INSERT INTO Categories VALUES (103, "Appetizers", NULL);

INSERT INTO Categories VALUES (104, "Desserts", NULL);

INSERT INTO Categories VALUES (105, "Salads", NULL);



-- iItems
INSERT INTO Items VALUES (2201,"Adana Kebabı", 102 , 1008 , 400, "Also known as kıyma kebabı – kebab with hand-minced (zırh) meat mixed with chili on a flat wide metal skewer (shish); associated with Adana region although very popular all over Turkey.");


INSERT INTO Items VALUES (2202,"Alinazik Kebabı", 102 , 1008 , 350, "Ground meat kebab sautéed in a saucepan, with garlic, yogurt and eggplants added");


INSERT INTO Items VALUES (2203,"Bahçıvan Kebabı", 102 , 1008 , 320, "Boneless lamb shoulder mixed with chopped onions and tomato paste");


INSERT INTO Items VALUES (2204,"Döner Kebabı", 102 , 1008 , 6.99, " dish of Turkish origin made of meat cooked on a vertical rotisserie.[1] Seasoned meat stacked in the shape of an inverted cone is turned slowly on the rotisserie, next to a vertical cooking element.");


INSERT INTO Items VALUES (2205,"Coca Cola", 101 , 1006 , 35, "1 Litre, Clearly it does not need description; Old but Gold.");


INSERT INTO Items VALUES (2206,"Ayran", 101 , 1009 , 25, "1 Litre, Doğal Ayran (Ev Yapımı).");


INSERT INTO Items VALUES (2207,"Chocolate Fruit Cake", 104 , 1007 , 44.99, "1 kg, Chocolate Pastry Cream Cake with Strawberry Banana Peach Pineapple Kiwi.");


INSERT INTO Items VALUES (2208,"Coffee Cake", 104 , 1003 , 64.49, "1 kg, White Vanilla Cake with Coffee Ganache and Piece of Chocolates");


INSERT INTO Items VALUES (2209,"Summer Fresh Tzaziki", 103 , 1001 , 6.49, "450g, Tzatziki is made simply with yogurt, drained cucumber, olive oil, fresh herbs (usually mint or dill), garlic, lemon juice and salt. It's a refreshing chilled sauce, dip or spread.");


INSERT INTO Items VALUES (2210,"Caesar Salad", 105 , 1002 , 8.99, "Romaine Lettuce, Croutons, Parmesan Cheese, Homemade Cheddar Dressing.");



-- shippers
INSERT INTO Shippers VALUES(0091, "John Connor", 9057684377);


INSERT INTO Shippers VALUES(0092, "Peter Griffin", 1899650255);


INSERT INTO Shippers VALUES(0093, "Ness Hermanos", 3999842110);


INSERT INTO Shippers VALUES(0094, "Eqwaak bon", 3366855209);


INSERT INTO Shippers VALUES(0095, "lan McWalt", 4477092281);



-- Orders
INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (70, 001, 0093);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (62, 004, 0091);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (65, 002, 0094);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (69, 005, 0095);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (66, 007, 0093);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (64, 006, 0092);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (63, 001, 0094);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (68, 004, 0092);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (67, 002, 0091);


INSERT INTO Orders (customer_id, emp_id, shipper_id) VALUES (71, 005, 0093);



-- OrderDetails
INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2204, 6, 4);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2207, 2, 10);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2206, 3, 1);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2210, 7, 21);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2203, 5, 9);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2201, 8, 7);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2205, 9, 13);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2208, 1, 6);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2209, 4, 16);

INSERT INTO OrderDetails (item_id, order_id, Amount) VALUES(2202, 10, 8);
