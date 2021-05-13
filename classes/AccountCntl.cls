public class AccountCntl {
    public Account objacc{set;get;}
    public AccountCntl(){
        objacc = new Account();
        
    }
    /* This comment is for testing and account data*/
    public void saveAccount(){
        if(objacc.Parentid!=null)
        {
            
            insert objacc;
            
        }
        else{
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Invalid Input.');
            ApexPages.addMessage(myMsg);   
        
    }
    
}

}