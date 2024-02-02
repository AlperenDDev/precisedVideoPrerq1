Account acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

List<Account> acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 5];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

RestCallouts.getAnimals();
RestCallouts.getProducts();
RestCallouts.postProduct('a068e000000K2k4AAC');

List<ToDo__c> deltoDos = [SELECT Id FROM ToDo__c WHERE Name != 'denemelik'];
delete deltoDos; 