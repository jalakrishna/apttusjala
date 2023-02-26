public interface TriggerInterface {
 
void beforeInsert(List<Object> newRecordsList);
void afterInsert(List<Object> newRecordList, Map<id,sObject> newRecordsMap);
void beforeUpdate(Map<id,sObject> newRecordMap, Map<id,sObject> oldRecordMap);
void afterUpdate(Map<id,sObject> newRecordMap, Map<id,sObject> oldRecordMap);
void beforeDelete(List<Object> oldRecordList, Map<id,sObject> oldRecordMap);
void afterDelete(Map<id,sObject> oldRecordMap);
void afterUnDelete(List<Object> newRecordList, Map<id,sObject> newRecordsMap);

}