public class String_Assignment {
    public void String_Assignment() {
        String LocalString = 'Thanks for the session on the string';
        Integer asrLength = LocalString.length();
        system.debug('==string length== ' + asrLength);

        String strUpperCase = LocalString.toUpperCase();
        system.debug('String Uppercase == ' + strUpperCase);

        Boolean sessionContains = LocalString.contains('session');
        system.debug('==Session contains== ' + sessionContains);

        Boolean sessionContains1 = LocalString.contains('SESSION'); 
        system.debug('SESSION contains == ' + sessionContains1);

        Integer indexOfFor = LocalString.indexOf('for');
        system.debug('IndexOfFor == ' + indexOfFor);

        Integer indexOfAn = LocalString.indexOf('an');
        system.debug('IndexOfAn == ' + indexOfAn);

        String removeThe = LocalString.remove('the');
        system.debug('Remove the == ' + removeThe);
    }
}