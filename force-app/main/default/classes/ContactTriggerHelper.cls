public class ContactTriggerHelper {

    public static void updateCount(List<Contact> contactList){
        Set<Id> accountIdsSet = new Set<Id>();
        for(Contact con: contactList){
            if(con.AccountId != null){
                accountIdsSet.add(con.AccountId);
            }
        }

   
    Map<Id,Account> accountMap = new Map<Id,Account>();
    List<Contact> conList = [select id,name,AccountId from contact where AccountId IN : accountIdsSet];
    For(Contact c: conList){
        if(!accountMap.containsKey(c.AccountId)){
            accountMap.put(c.AccountId, new Account(Id=c.accountId, No_Of_Contacts__c  = 1));
        }else {
            Account tempAccount = accountmap.get(c.AccountId);
            tempAccount.No_Of_Contacts__c += 1;
            accountmap.put(c.AccountId, tempAccount);
        }

    }
    update accountMap.values();
    }


}