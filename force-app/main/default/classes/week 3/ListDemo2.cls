public class ListDemo2 {
    public static boolean candidateList(string str){
        List<string> listC = new list<string>(); 
        system.debug('before : ' + listC);

        listC.add('Marc');
        listC.add('leyla');
        listC.add('hades');
        listC.add('Marc');
        listC.add('Marc');
        system.debug('after ' + listC);
        boolean check = listC.contains(str);
        return check;
    }

    public static void friendList() {
        list<string> fl = new list<string> {'sachin', 'Arpan', 'erik', 'rot'};
        system.debug('before : ' + fl);

        fl.sort();
        system.debug('after sorting: ' + fl);
    }

    public static void iterateList1() {
        list<integer> l1 = new list<integer>();
        l1.add(77);
        l1.add(54);
        l1.add(23);
        l1.add(33);
        l1.add(06);
        l1.add(32);

        for (integer eachInteger : l1 ) {
            system.debug(eachInteger);    
        }
        
    }

    public static void iterateList2() {
        list<integer> l1 = new list<integer>();
        l1.add(77);
        l1.add(54);
        l1.add(23);
        l1.add(33);
        l1.add(06);
        l1.add(32);

        for (integer eachNumber : l1 ) {
            system.debug('5 x ' + eachNumber + '=' + (eachNumber*5));    
        }
        
    }

    public static integer add(list<integer> l1) {
        integer sum = 0;

        for (integer num : l1) {
            system.debug('sum inside for : ' + sum);
            sum += num;    
        }

        return sum;
        
    }

    public static void iterateListString1 () {
        List<string> listC = new list<string>(); 
        
        listC.add('Marc');
        listC.add('leyla');
        listC.add('hades');
        listC.add('Marc');
        listC.add('Marc');
        listC.add ('Elonn');

        for (string eachStr : ListC) {
            integer len = eachStr.length();
            system.debug(eachStr + '-' + len );
            
        }
    }

    public static string add(list<string> ls){
        string finalString = '';

        for(string eachStr : ls){
            system.debug('final str inside for ==> ' + finalString);
            finalString = finalString + eachStr + '||';
        }
        return finalString;
    }
   
    public static void iterateList99(){
        list<string> list9 = new list<string>{'class', 'objects', 'methods', 'const', 'getter', 'list'};
        system.debug(ListDemo2.add(list9));
        list<string> list99 = new list<string>();

        for (String eachTopic : list9) {
            string temp = eachTopic + ' ' + eachTopic.length();
            list99.add(eachTopic);
            list99.add(temp);
        }
        system.debug(list99);
    }
        
        
}