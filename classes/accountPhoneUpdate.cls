public class accountPhoneUpdate {
public static void accountMethod(List<Account>aclist,map<id,account> oldmap){
    set<id> accountId=new set<id>();
    for(Account ac:aclist){
        account accountOld=oldmap.get(ac.id);
        if(ac.Phone!=accountOld.phone){
            accountId.add(ac.Id);
        }
    }

    if(accountId.size()>0){
        map<id,account> accountmap=new map<id,account>([select id,phone,(select id,phone from contacts) from account where id in:accountId]);
        List<contact> clist=new List<contact>();
        for(account ac:aclist){
            account accountOld=oldmap.get(ac.id);
            if(ac.Phone!=accountOld.phone){
                if(accountmap.containskey(ac.id)){
                    account ac1=accountmap.get(ac.id);
                    List<contact>lstCont = ac1.contacts;
                    for(contact c:lstCont){
                        c.phone=ac.phone;
                        clist.add(c);
                    }

                }
            }
        }
        if(!clist.isEmpty()){
            update clist;
        }

    }
}}