public class DecimalDateTimeAssignment {
    public void DecimalAssignmentMethod() {
        decimal d1 = 30.452343234;
        decimal dd = d1.setScale(2);
        string str1 = string.valueOf(dd);
        decimal d2 = decimal.valueOf(str1);

        system.debug('==d1== ' + d1);
        system.debug('dd== ' + dd);
        system.debug('str1 == ' + str1);
        system.debug('d2 == ' + d2);
    }

    public void DateTimeAssignment(){
        date myBirthDate = date.newInstance(1997, 01, 20);
        system.debug('mybirthday == ' + myBirthDate);

        time dt = time.newInstance(10, 20, 40, 200);
        system.debug('mybirhttime = ' + dt);
        
    }
}