NewCar nc = new NewCar();

String carType = nc.startCar('Lexus', 'RX');
nc.accelerrate(80);
nc.checkSpeed();
nc.brake(55);
nc.checkSpeed();
nc.accelerrate(10);
nc.checkSpeed();
nc.brake(40);
nc.checkSpeed();
nc.stopCar();
nc.checkSpeed();