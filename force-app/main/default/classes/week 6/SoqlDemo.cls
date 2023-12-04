public class SoqlDemo {
   public static void accountSOQL1() {
        List<Account> listAcc = [select id, name, phone from account];
        system.debug('listAcc is ' + listAcc);

        List<Contact> listCon = [select id, name, phone from contact];
        system.debug('listCon : ' + listCon);
   }

   public static void accountSOQLOneRecord() {
        account acc = [select id , name, phone, createddate from Account order by CreatedDate desc limit 1];
        system.debug('acc record is  ' + acc);
   }

   public static void accountSOQL_3() {
    List<Account> listAcc = [SELECT Id, Name, AccountNumber, Phone FROM Account ORDER BY CreatedDate DESC];
    
    for (Account eachAcc : listAcc) {
        System.debug('each account: ' + eachAcc);
        System.debug('acc name is ' + eachAcc.Name);
        System.debug('acc phone is ' + eachAcc.Phone);
        System.debug('acc number is ' + eachAcc.AccountNumber);
        System.debug('-------');
    }
}

}