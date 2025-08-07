/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.controller;

/**
 *
 * @author khuts
 */
public class ConversationManager implements ConversationInterface{
    
    @Override
    public String generateTitle(String gender){
        String title = "Mr.";
        
        if(gender.equals("Female")) {
            title = "Ms.";
        }
        
        return title;
    }

    @Override
    public String generateComments(String supportedTeam) {
        String comment = "Mxm"; 
                
        if(supportedTeam.equals("chiefs")) {
           comment = "Khosi for life";
        }        
         
        return comment;        
    }
    
}
