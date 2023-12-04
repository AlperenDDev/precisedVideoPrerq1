List<Case> listCase = new List<Case>();
for (Integer i = 0; i < 205; i++) {
    Case c = new Case(Subject = 'There is a bug ' + i, Origin ='Web', Status = 'New', Description ='Resolve it.' );
    listCase.add(c); // Add the Case object to the list
}
insert listCase; // Insert the list of cases outside the loop




String s = 'This is a string';
system.debug(s);
//heap size
String s2 = 'Because Apex runs in a multitenant environment, the Apex runtime engine strictly enforces limits so that runaway Apex code or processes don’t monopolize shared resources. If some Apex code exceeds a limit, the associated governor issues a runtime exception that can’t be handled.';