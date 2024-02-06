public class SoqlParentChildAssignment {
    public static void printContactAccounts() {
        List<Contact> listCont = [select id, name, account.id, account.name from Contact];

    for(contact eachCont : listCont){
        system.debug('contact name ' + eachCont.name + 'contact account id is ' + eachCont.Account.id + 'its acc name is ' + eachCont.Account.name);

        }
    }
   public static void printAccountContacts() {
        list<account> listAcc = [select id, name, (SELECT id, name from contacts) from Account];

        for (Account eachAcc : listAcc) {
            system.debug('acc name is ' + eachAcc.name);
            for (contact  eachCont : eachAcc.Contacts) {
                system.debug('contact id is ' + eachCont.Id + 'contact name ' + eachCont.name);
            }
        }
   } 
}