// Trigger on the Account object
trigger ContactPhoneUpdate on Account (after Update) {
if(trigger.isUpdate && trigger.isAfter){
    accountPhoneUpdate.accountMethod(trigger.new,trigger.oldmap); 
}}