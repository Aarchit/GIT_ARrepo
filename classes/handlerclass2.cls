// Doing a small chnage

Public class handlerclass2
{
public void insertvalue(List<opportunity> opplist)
{
Datainsert(opplist);
} 

// oppounity method - List <opportunity> opplist
void Datainsert(List<opportunity> opplist)
{
    List<opportunity> opp2 = new list <opportunity>();
    for(opportunity op : opplist)
    {
    if(op.TrackingNumber__c!=null)
    

    op.Description = op.TrackingNumber__c;
}
}
}