public class AccountCntl {
    public Account objacc{set;get;}
    public AccountCntl(){
        objacc = new Account();
        
    }
    /* This is a testing
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