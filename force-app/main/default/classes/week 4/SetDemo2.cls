public class SetDemo2 {
   public static void setToUpperCase(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('LISBON');
        system.debug('cities set is = ' + cities);

        set<string> citiesUp = new set<string>();
         
        for (string eachCity : cities){
            citiesUp.add(eachCity.toUpperCase());
        }
        system.debug('uppercase cities = ' + citiesUp);
   }

    public static void setInteger2(){
        set<integer> setInt = new set<integer>{1,3,5,6,7,8,9,0};

        for(integer i : setInt){
            system.debug(i + 5);
        }
    }
}