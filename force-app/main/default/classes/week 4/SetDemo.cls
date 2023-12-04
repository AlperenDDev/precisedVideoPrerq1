public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('tokyo');
        cities.add('lisbon');
        cities.add('Nairobi');
        cities.add('berlin');
        cities.add('tokyo');
        cities.add('LISBON');
        system.debug('cities are = ' + cities);
    }
    
    public static void randonIntegerSet(){
        Set<integer> intSet = new Set<integer>();
        intSet.add(15);
        intSet.add(10);
        intSet.add(20);
        intSet.add(15);
        intSet.add(5);
        intSet.add(45);
        intSet.add(11);
        system.debug('int set is =' + intSet);
    }

    public static void setFromList(){
        list<integer> l1 = new list<integer>{10,12,24,23,545,212};
        system.debug('l1 is = ' + l1);

        set<integer> s1 = new set<integer>();
        s1.addAll(l1);
        system.debug('s1 = ' + s1);
    }

     public static set<integer> setFromList(list<integer> l2){
        system.debug('l2 from parameter is ' + l2);
        set<integer> s1 = new set<integer>();
        s1.addAll(l2);
        return s1;
     }

}