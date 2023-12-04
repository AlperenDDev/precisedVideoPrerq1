public class PrimitiveDataTypeDemo {
    public void print1(){
       String batchName = 'batch 16';
       integer totalCandidates = 45;
       boolean isAdminCompleted = true;

       string batchDescription = batchName + 'has' + totalCandidates + 'candidates. Admin completed: ' + isAdminCompleted;
       System.debug(batchDescription);              
 }   
    public void print2(){
        Decimal d1 = 8843434.3232;
        System.debug('decimal ==> '+ d1);

        long l1 = 393939393L;
        System.debug('long l1 ==> ' + l1);

    }
}