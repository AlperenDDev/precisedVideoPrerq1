List<ToDo__c> listToDo = new List<ToDo__c>();
for (Integer i = 0; i < 8; i++) {
    ToDo__c c = new ToDo__c(Name = 'Testing Todo ' + i, ToDo_Id__c = i);
    listToDo.add(c); // Add the Case object to the list
}
insert listToDo; // Insert the list of cases outside the loop




String s = 'This is a string';
system.debug(s);
//heap size
String s2 = 'Because Apex runs in a multitenant environment, the Apex runtime engine strictly enforces limits so that runaway Apex code or processes don’t monopolize shared resources. If some Apex code exceeds a limit, the associated governor issues a runtime exception that can’t be handled.';