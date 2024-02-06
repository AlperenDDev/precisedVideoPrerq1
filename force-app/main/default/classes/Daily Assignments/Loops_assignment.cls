public class Loops_assignment {
    public void whileLoopMethod(integer n){
        integer i = 1;
        while (i<=n){
            system.debug(i);
            i++;
        }
    }

    public void printEven(){
        for(integer i = 0; i<100; i++){
            if(Math.mod(i, 2) == 0){
                system.debug(i);
            }    
        }
    }

    public Integer printPower(integer n){
        integer result = 1;
        for(integer i=0; i<n; i++){
            result = result*n;
        }
        return result;
    }

}