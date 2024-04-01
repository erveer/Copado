@isTest
public class UpdateOpportunityTest {
    
    
    @isTest
    public static void positiveTestCase(){
        List<Opportunity> testOpps = new List<Opportunity>();
        for(Integer i = 0; i < 3; i++) {
            testOpps.add(new Opportunity(Name = 'Test Opportunity ' + i, stageName = 'Prospect',closeDate = system.today()));
        }
        insert testOpps;
        
        integer opps =  UpdateOpportunity.getOpp();  
        Integer oppSize = 3;
        system.debug('opps'+opps);
        System.assertEquals(testOpps.size(), opps, 'Both list should have 3 records');       
    }  
    
    @isTest
    public static void negativeTestCase(){
        
        integer opps =  UpdateOpportunity.getOpp();  
        
        system.debug('opps'+opps);
        System.assertEquals(0, opps, 'Both list should have 0 records');       
    }  
}