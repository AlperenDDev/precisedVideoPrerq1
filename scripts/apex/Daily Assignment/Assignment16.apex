// Create 2 products using the no-parameter constructor
InventoryManager product1 = new InventoryManager();
InventoryManager product2 = new InventoryManager();

// Create 3 products using the parameterized constructor
InventoryManager product3 = new InventoryManager('Product A', 'P001');
InventoryManager product4 = new InventoryManager('Product B', 'P002');
InventoryManager product5 = new InventoryManager('Product C', 'P003');

// Use getters and setters to set prices
product1.setCostPrice(100);
product1.setSellingPrice(150);

product2.setCostPrice(200);
product2.setSellingPrice(240);

product3.setCostPrice(50);
product3.setSellingPrice(60);

product4.setCostPrice(300);
product4.setSellingPrice(360);

product5.setCostPrice(120);
product5.setSellingPrice(140);

// Call productDisplay method to show product details
product1.productDisplay();
product2.productDisplay();
product3.productDisplay();
product4.productDisplay();
product5.productDisplay();

// Print total products created using productCount
System.debug('Total products created: ' + InventoryManager.productCount);