// This is a Test for Git
public with sharing class LightningConnectQuickstart {
    public Boolean getCustomerIDsSet(){
        List<Account> l = [SELECT Id 
                           FROM Account 
                           WHERE Customer_Id__c = null];
        
        return (l.size() == 0);
    }
    
    public void setCustomerIDs(){
        List<Account> l = [SELECT Id FROM Account];
        for (Integer ii = 0; ii < l.size(); ii++) {
            l[ii].Customer_Id__c = String.valueOf(ii + 1);
        }
        update l;
    }
}