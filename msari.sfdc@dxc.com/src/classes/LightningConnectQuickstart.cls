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
        for (Integer iii = 0; iii < l.size(); iii++) {
            l[iii].Customer_Id__c = String.valueOf(iii + 1);
        }
        update l;
    }
}