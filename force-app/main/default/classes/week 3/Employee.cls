public  class Employee {
    string name;
    decimal salary;

    public void details(){
        system.debug(name);
        system.debug(salary);
    }

    public void setName(string n){
        this.name = n;
    }

    public string getName(){
        return this.name;
    }

    public void setSalary(decimal s){
        if (s >= 8000 && s <= 50000) {
            this.salary = s;
        }else {
        this.salary = 0;
        system.debug('salary must be in range');
        }
    }


    public decimal getSalary(){
        return this.salary;
    }
}