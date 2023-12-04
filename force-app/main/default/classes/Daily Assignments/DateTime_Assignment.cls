public class DateTime_Assignment {
    public void diffofDate() {
        date varTomorrowDate = date.newInstance(2023, 7, 31);
        system.debug('varTomorrowDate == ' + varTomorrowDate);

        date varTodayDate = date.newInstance(2023, 7, 30);
        system.debug('varTodayDate == ' + varTodayDate);

        Integer daysDiffOff = varTodayDate.daysBetween(varTomorrowDate);
        system.debug('daysDiffOff = = ' + daysDiffOff);
    }

    public void TimeCheck(){
        Datetime varTomorrowDateTime = Datetime.newInstance(2023, 7, 31, 7, 0, 0);
        system.debug('varTomorrowDateTime == ' + varTomorrowDateTime);

        Datetime var10DaysDateTime = Datetime.newInstance(2023, 8, 8, 9, 0, 0);
        system.debug('var10DaysDatetime = ' + var10DaysDateTime);

        Long varDateTimeLong = 1233987436L;

        Datetime add7varDateTime = varTomorrowDateTime.addDays(7);
        system.debug('add7varTomorrowDateTime== ' + add7varDateTime);

        Datetime add10Var10DaysDateTime = var10DaysDateTime.addDays(10);
        system.debug('add1010days = ' + add10Var10DaysDateTime);
        
    }
}