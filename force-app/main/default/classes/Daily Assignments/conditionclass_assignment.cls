public class conditionclass_assignment {
    public string ifClassMethod(integer monthNumber) {
        string output_Month = '';
        if(monthNumber == 1){
            output_Month = 'Jan';
        }
        if (monthNumber == 2){
            output_Month = 'Feb';
        }
        else{
            output_Month = 'Not a valid month';
        }
        return output_Month;
        
    }

    public string caseMethod(string monthName){
        string output_Quater = '';
        if(monthName == 'Jan' || monthName == 'Feb' || monthName == 'March'){
            output_Quater = 'Quater 1';
        }
        else {
            output_Quater = 'Not a Quater';
        }
        return output_Quater;
        
    }
}