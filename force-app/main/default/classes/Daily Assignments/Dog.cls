public class Dog {
    public string name;
    public string color;
    public integer age = 0;

    public Dog() {
        age = 1;
        checkAge();
        
    }

    public Dog(string n, string clr, integer a){
        name = n;
        color = clr;
        age = a;
        checkAge();
        
    }

    public void checkAge(){
        if(age > 0 && age <= 1){
            system.debug('puppy dog');
        }else if(age > 1 && age <=3){
            system.debug('Young dog');
        }else if (age > 3 && age<= 5){
            system.debug('Adult dog');
        }else {
            system.debug('old dog');
        }
    }
}