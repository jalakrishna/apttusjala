public class ContactTriggerHandler  implements TriggerInterface {


public static void beforeInsert(List<Object> newRecordsList){

}
public static void afterInsert(List<Object> newRecordList, Map<id,sObject> newRecordsMap){
        List<Contact> contactList = (List<Contact>)newRecordList; // Type casted
        ContactTriggerHelper.updateCount(contactList);

}
public static void beforeUpdate(Map<id,sObject> newRecordMap, Map<id,sObject> oldRecordMap){

}
public static void afterUpdate(Map<id,sObject> newRecordMap, Map<id,sObject> oldRecordMap){

}
public static void beforeDelete(List<Object> oldRecordList, Map<id,sObject> oldRecordMap){

}
public static void afterDelete(Map<id,sObject> oldRecordMap){
    List<Contact> contactList = (List<Contact>)oldRecordMap.values(); // Type casted
    ContactTriggerHelper.updateCount(contactList);

}
public static void afterUnDelete(List<Object> newRecordList, Map<id,sObject> newRecordsMap){
    List<Contact> contactList = (List<Contact>)newRecordList; // Type casted
    ContactTriggerHelper.updateCount(contactList);
}




}