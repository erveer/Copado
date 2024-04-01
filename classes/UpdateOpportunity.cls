public class UpdateOpportunity {
    
    public static Integer getOpp(){
        Integer size = null;
        try{
            List<Opportunity> opps = [SELECT id, name FROM Opportunity];
            system.debug('Opporutities::'+ opps);
            size = opps.size();
        }catch(exception e){
            size =  0;
            system.debug('error::'+e);
        }
        return size;
    }
}