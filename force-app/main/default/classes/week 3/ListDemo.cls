public class ListDemo {
    public static void candidateList(){
        List<string> listC = new list<string>(); 
        system.debug('before : ' + listC);

        listC.add('Marc');
        listC.add('leyla');
        listC.add('hades');
        listC.add('zeus');
        listC.add('zeus');
        system.debug('after ' + listC);
    }

    public static string candidateList(integer i){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        listC.add('Marc');
        listC.add('leyla');
        listC.add('hades');
        listC.add('zeus');
        listC.add('zeus');
        system.debug('after ' + listC);

        string returnValue = '';
        integer size = listC.size();
        if(i >= 0 && i<size){
            returnValue = listC.get(i);
        } else {
            returnValue = 'no value';
        }
        return returnValue;
    }

    public static void randomIntList(){
        list<integer> l1 = new list<integer>();
        l1.add(77);
        l1.add(54);
        l1.add(23);
        l1.add(33);
        l1.add(06);
        l1.add(32);
        system.debug('list of integer ' + l1);

        integer i3 = l1.get(4);
        integer i33 = l1[4];
        system.debug('i3 is ' + i3);
        system.debug('i33 is ' + i33);

    }
}