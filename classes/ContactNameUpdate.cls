public class ContactNameUpdate {
    // Method to handle the contact inserts.
    public static void contactMethod(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        for(Account acc : accList) {
              Contact con = new Contact(AccountId = acc.Id);
              List<String> nameStr = acc.Name.split(' ');
              if(nameStr.size()>0)
                 con.LastName = nameStr[0];
              if(nameStr.size()>1)
                  con.FirstName = nameStr[1];
              conList.add(con);
        }
        insert conList;     
    }
}