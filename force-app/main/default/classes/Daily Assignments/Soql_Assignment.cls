public class Soql_Assignment {
    public static void soql_whereClause() {
        List<Contact> lstContact = [select id from contact where name like 'A%'];
        system.debug('Size of list conttact ' + lstContact.size());
    }

    public static void soql_FromMethod() {
        List<Contact> lstContact = [select id, lastName, phone from Contact];
        for (Contact con : lstContact) {
            system.debug('last name is ' + con.Lastname + 'phone is ' + con.Phone);
        }
    }
}