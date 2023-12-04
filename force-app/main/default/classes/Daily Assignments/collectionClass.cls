public class collectionClass {
    public static List<string> lstMonth;
    public static string output_month; 
    public static string listAssignment(integer i){
        lstMonth = new List <string> {'January', 'feb', 'march', 'april', 'may', 'june', 'july', 'august', 'sept', 'oct', 'nov','dec'};
        system.debug('listmonth =' + lstMonth);
        if (i>0 && i-1<lstMonth.size()) {
            output_month = lstMonth.get(i-1);
        } else {
            output_month = 'not valid month';
        }
        system.debug('output month is = ' + output_month);
        return output_month;
    }
     
}