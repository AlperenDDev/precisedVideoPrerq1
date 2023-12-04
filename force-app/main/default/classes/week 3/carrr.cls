public  class carrr {
   string carNumber;
   string name;
   string color;
   integer mfgYear;
   decimal price;

   public void details(){
    system.debug('car number is ' + carNumber);
    system.debug('car name is ' + name);
    system.debug('color is ' + color);
    system.debug('manufacturing year is ' + mfgYear);
    system.debug('price is ' + price);
    printCarAge();
   }

   private void printCarAge(){
      date todayDate = date.today();
      integer currenYear = todayDate.year();
      system.debug('car age is ' + (currenYear - mfgYear));
   }

   public carrr(){
    system.debug('carrr constructor called when new instance is created.');
    mfgYear = 2023;
   }

   public carrr(integer yr){
    mfgYear = yr;
   }

   public carrr(string carnum, string nm, string clr, integer yr, decimal pc){
    carNumber = carnum;
    name = nm;
    color = clr;
    mfgYear = yr;
    price = pc; 

    details();
   }
}