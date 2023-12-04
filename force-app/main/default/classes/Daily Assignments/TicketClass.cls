public class TicketClass {
    public integer ticketNumber;
    public string ticketType;
    
    public void setTicket(Integer ticketNumber){
        this.ticketNumber = ticketNumber;
    }

    public integer getTicket(){
        return this.ticketNumber;
    }

    public string ticketType(){
        if (this.ticketNumber > 0 && this.ticketNumber <= 200) {
            ticketType = 'silver';
        }
        if (this.ticketNumber > 200 && this.ticketNumber <=400) {
            ticketType = 'Gold';
        }
        if (this.ticketNumber > 400 && this.ticketNumber <=600) {
            ticketType = 'Plat';
        }
        return ticketType;
    }
}