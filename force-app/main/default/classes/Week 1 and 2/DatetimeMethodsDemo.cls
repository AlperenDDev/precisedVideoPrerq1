public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        system.debug('we will calculate our age in months');

         Date todayDate = date.today();
         Date alpBDate = date.newInstance(1997, 1, 20);
         integer alpAgeMonths = alpBDate.monthsBetween(todayDate);
         System.debug('alp age in months ' + alpAgeMonths);
        
    }
}