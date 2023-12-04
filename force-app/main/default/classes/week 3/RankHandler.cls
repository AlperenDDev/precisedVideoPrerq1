public class RankHandler {
    public string rankPrice(integer rank){
        string prize = '';
        if (rank == 1) {
            prize = 'gold';
        } else if (rank == 2) {
            prize = 'silver';
        } else if (rank == 3){
            prize = 'Bronze';
        } else {
            if (rank <= 10) {
                prize = 'iron';
            } else {
                prize = 'Aluminum';
                
            }
        }
        return prize;
    }

    public string rankPrizeSwitch(integer rank){
        string prize = '';

        switch on rank {
            when 1 {
                prize = 'Gold';
            } 
            when 2 {
                prize = 'Silver';
            }
            when 3 {
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Iron';
            }
            when else {
                prize = 'aliminum';
            }
        }

        return prize;
    }
}