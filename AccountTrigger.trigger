trigger AccountTrigger on Account (before insert,before update,after insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        compliance.setAccountsInactive(trigger.new);
    }
    if(Trigger.isAfter && Trigger.isAfter){
                compliance.createTeamMembers(trigger.new);
    }
       
    if (Trigger.isBefore && Trigger.isUpdate){
        compliance.isActiveValidation(trigger.old);
        }
}