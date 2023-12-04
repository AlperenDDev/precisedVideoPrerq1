List<decimal> sumList = new List<decimal>();
sumList.add(15.15);//bunları yoruma alırsak null geliyor.
sumList.add(25.05);
sumList.add(30.45);
sumList.add(05.20);
sumList.add(75.50);
System.debug('Sum = ' + OperationsHelper.sumOfList(sumList));
System.debug('Average = ' + OperationsHelper.averageOfList(sumList));
System.debug('Highest = ' + OperationsHelper.highiestOfList(sumList));
System.debug('Lowest = ' + OperationsHelper.lowestOfList(sumList));