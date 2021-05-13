// Trigger is working on contact object to modidy account name

trigger wed on Contact(Before insert, Before Update) {

         Public Account a;

         Public List < Contact > ab;

         if (Trigger.isinsert == TRUE) {
          For(Contact c: Trigger.New)

          {

           ab = new List < Contact > ();

           a = [select Phone from Account where ID = : c.AccountID];

           c.Phone = a.Phone;

           ab.add(c);

          }

         }

         if (Trigger.isUpdate == TRUE) {

          For(Contact ct: Trigger.New) {

           String stv = ct.FirstName;

           Contact cts = new Contact();

           cts.FirstName = 'ram';
           cts.LastName = ct.LastName;

           ab.add(cts);

          }

          if (ab != null) {
           try {
            insert ab;
           } catch (DMLException e) {
            system.debug(e.getMessage());
           }
          }

         }

        }