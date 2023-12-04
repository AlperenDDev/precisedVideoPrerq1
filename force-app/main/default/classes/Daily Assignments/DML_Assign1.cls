public class DML_Assign1 {
    public void insertRecords(){
        list<Account>accountInsertlist = new list<Account>();
        for (Integer i = 0; i < 20; i++) {
            Account acc = new Account();
            acc.name = 'Test Account' + i + 'created';
            accountInsertlist.add(acc);
        }
        if(accountInsertlist.size()>0){
            insert accountInsertlist;
        }
    }

    public void updateRecords() {
        list<account> accountQueryList = new List<Account>();
        list<account> accountUpdateList = new List<account>();
        accountQueryList = [select id, name from account order by CreatedDate desc limit 20];
        for (Account acc : accountQueryList) {
            acc.name = acc.name + 'updated';
            accountUpdateList.add(acc);
        }
        if (accountUpdateList.size()>0) {
            update accountUpdateList;
        }
    }
}