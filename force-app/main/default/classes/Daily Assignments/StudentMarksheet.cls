public class StudentMarksheet {
    string firstName;
    string lastName;
    integer mathematics;
    integer english;
    integer chemistry;
    static string schoolName;

    public StudentMarksheet(){
        schoolName = 'Salesforce Public School';
    }

    public void setFirstName(String firstName){
        this.firstName = firstName;
    }

    public string getFirstName(){
        return this.firstName;
    }

    public void setLastName(string lastName){
        this.lastName = lastName;
    }

    public string getLastName(){
        return this.lastName;
    }
    
    public void setMarks(integer mathematics, integer chemistry, integer english){
        this.mathematics = mathematics;
        this.chemistry = chemistry;
        this.english = english;
    }

    public void showMarksheet(){
        system.debug('Student Name = ' + '' + this.firstName + this.lastName);
        system.debug('School Name = ' + '' + schoolName);
        system.debug('math mark = ' + '' + this.mathematics);
        system.debug('chemistry mark = ' + '' + this.chemistry);
        system.debug('english mark = ' + '' + this.english);
        integer sumOfMarks = this.mathematics + this.chemistry + this.english;
        if (sumOfMarks > 120) {
            system.debug('you are passed');
        } else {
            system.debug('failed ');
        }
    }
}