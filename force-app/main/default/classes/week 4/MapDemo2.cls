public class MapDemo2 {
    public static void mapItemPrices() {
        map<string, decimal> map2 = new map<string, decimal> ();
        map2.put('apple', 5.5);
        map2.put('watermelon', 10.99);
        map2.put('mango', 15.99);
        map2.put('pen', 8.5);
        map2.put('pencil', 11.5);
        map2.put('milk', 2.99);
        map2.put('chai', 2.99);


        map<string, decimal> lowerMap = new Map<String, decimal>();
        map<string, decimal> higherMap = new Map<String, decimal>();

        set<string> allItems = map2.keySet();
        for(string eachItem : allItems){
            decimal eachItemPrice = map2.get(eachItem);

            if(eachItemPrice>10){
                system.debug('HIGHER = ' +eachItem + ' its price' + eachItemPrice);
                higherMap.put(eachItem, eachItemPrice);
            }else {
                system.debug('LOWER = ' +eachItem + ' its price' + eachItemPrice);
                lowerMap.put(eachItem, eachItemPrice );
            }
        }
        system.debug('higher map is '+ higherMap);
        system.debug('lower map is '+ lowerMap);

    }

    public static string retrieveMonth(integer m){
        string month = '';

        map<integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'Jan');
        monthMap.put(2, 'feb');
        monthMap.put(3, 'march');
        monthMap.put(4, 'april');
       
        monthMap.put(5, 'may');
        monthMap.put(6, 'june');
        monthMap.put(7, 'july');
        monthMap.put(8, 'august');
       
        monthMap.put(9, 'sept');
        monthMap.put(10, 'oct');
        monthMap.put(11, 'nov');
        monthMap.put(12, 'dec');

        boolean keyExist = monthMap.containsKey(m);
        if(keyExist){
            month = monthMap.get(m);
        } else {
            month = 'no such month';
        }
        
        return month;
    }
}