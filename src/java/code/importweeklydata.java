/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import database.dbConnweb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import notification.sendmail;

/**
 *
 * @author Emmanuel E
 */
public class importweeklydata extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setHeader("Access-Control-Allow-Origin", "*");
        
         sendmail sm=new sendmail();
        
        PrintWriter out = response.getWriter();
        String txtresponse="Error occured during data export at the server."; 
        dbConnweb conn= new dbConnweb();
        
         String facilityname=null;
        String startdate=null;
        String enddate=null;
        
        try {
        
        String id="";      
       
        
        
        
String hiv_pos_target_child=null;
String hiv_pos_target_adult=null;
String hiv_pos_target_total=null;
String hiv_pos_child=null;
String hiv_pos_adult=null;
String hiv_pos_total=null;
String new_care_child=null;
String new_care_adult=null;
String new_care_total=null;
String new_art_target_child=null;
String new_art_target_adult=null;
String new_art_target_total=null;
String started_art_child=null;
String started_art_adult=null;
String started_art_total=null;
String viral_load_target_child=null;
String viral_load_target_adult=null;
String viral_load_target_total=null;
String viral_load_done_child=null;
String viral_load_done_adult=null;
String viral_load_done_total=null;
String ipt_target_child=null;
String ipt_target_adult=null;
String ipt_target_total=null;
String ipt_child=null;
String ipt_adult=null;
String ipt_total=null;
String testing_target_child=null;
String testing_target_adult=null;
String testing_target_total=null;
String test_child=null;
String test_adult=null;
String test_total=null;
        
        
String pmtct_hiv_pos_target=null;
String pmtct_hiv_pos=null;
String eid_target=null;
String eid_done=null;
String viral_load_mothers_target=null;
String viral_load_mothers_done=null;
String timestamp=null;
String user=null;
        
//percentages


String viral_load_mothers_perc=null;
String  eid_done_perc=null;
String pmtct_hiv_pos_perc=null;

//new percenatages
String hiv_pos_yield_perc_child=null;
String hiv_pos_yield_perc_adult=null;
String hiv_pos_yield_perc_all=null;
String hiv_pos_care_perc_child=null;
String hiv_pos_care_perc_adult=null;
String hiv_pos_care_perc_all=null;
String started_art_perc_child=null;
String started_art_perc_adult=null;
String started_art_perc_all=null;
String viral_test_perc_child=null;
String viral_test_perc_adult=null;
String viral_test_perc_all=null;
String ipt_done_perc_child=null;
String ipt_done_perc_adult=null;
String ipt_done_perc_all=null;
String tested_perc_child=null;
String tested_perc_adult=null;
String tested_perc_all=null;

          
        //comments
String viral_load_mothers_cmts=null;
String eid_done_cmts=null;
String pmtct_hiv_pos_cmts=null;
String hiv_pos_yield_cmts=null;
String hiv_pos_care_cmts=null;
String started_art_cmts=null;
String viral_test_cmts=null;
String ipt_done_cmts=null;
String tested_cmts=null;

          
       
        
         id=request.getParameter("id");      
         facilityname=request.getParameter("facilityname");
         startdate=request.getParameter("startdate");
         enddate=request.getParameter("enddate");
         
hiv_pos_target_child=request.getParameter("hiv_pos_target_child");
hiv_pos_target_adult=request.getParameter("hiv_pos_target_adult");
hiv_pos_target_total=request.getParameter("hiv_pos_target_total");
hiv_pos_child=request.getParameter("hiv_pos_child");
hiv_pos_adult=request.getParameter("hiv_pos_adult");
hiv_pos_total=request.getParameter("hiv_pos_total");
new_care_child=request.getParameter("new_care_child");
new_care_adult=request.getParameter("new_care_adult");
new_care_total=request.getParameter("new_care_total");
new_art_target_child=request.getParameter("new_art_target_child");
new_art_target_adult=request.getParameter("new_art_target_adult");
new_art_target_total=request.getParameter("new_art_target_total");
started_art_child=request.getParameter("started_art_child");
started_art_adult=request.getParameter("started_art_adult");
started_art_total=request.getParameter("started_art_total");
viral_load_target_child=request.getParameter("viral_load_target_child");
viral_load_target_adult=request.getParameter("viral_load_target_adult");
viral_load_target_total=request.getParameter("viral_load_target_total");
viral_load_done_child=request.getParameter("viral_load_done_child");
viral_load_done_adult=request.getParameter("viral_load_done_adult");
viral_load_done_total=request.getParameter("viral_load_done_total");
ipt_target_child=request.getParameter("ipt_target_child");
ipt_target_adult=request.getParameter("ipt_target_adult");
ipt_target_total=request.getParameter("ipt_target_total");
ipt_child=request.getParameter("ipt_child");
ipt_adult=request.getParameter("ipt_adult");
ipt_total=request.getParameter("ipt_total");
testing_target_child=request.getParameter("testing_target_child");
testing_target_adult=request.getParameter("testing_target_adult");
testing_target_total=request.getParameter("testing_target_total");
test_child=request.getParameter("test_child");
test_adult=request.getParameter("test_adult");
test_total=request.getParameter("test_total");
         
      
 pmtct_hiv_pos_target=request.getParameter("pmtct_hiv_pos_target");
 pmtct_hiv_pos=request.getParameter("pmtct_hiv_pos");
 eid_target=request.getParameter("eid_target");
 eid_done=request.getParameter("eid_done");
 viral_load_mothers_target=request.getParameter("viral_load_mothers_target");
 viral_load_mothers_done=request.getParameter("viral_load_mothers_done");
 timestamp=request.getParameter("timestamp");
 user=request.getParameter("user");
         
          viral_load_mothers_perc=request.getParameter("viral_load_mothers_perc");
          eid_done_perc=request.getParameter("eid_done_perc");
           pmtct_hiv_pos_perc=request.getParameter("pmtct_hiv_pos_perc");
          
           
hiv_pos_yield_perc_child=request.getParameter("hiv_pos_yield_perc_child");
hiv_pos_yield_perc_adult=request.getParameter("hiv_pos_yield_perc_adult");
hiv_pos_yield_perc_all=request.getParameter("hiv_pos_yield_perc_all");
hiv_pos_care_perc_child=request.getParameter("hiv_pos_care_perc_child");
hiv_pos_care_perc_adult=request.getParameter("hiv_pos_care_perc_adult");
hiv_pos_care_perc_all=request.getParameter("hiv_pos_care_perc_all");
started_art_perc_child=request.getParameter("started_art_perc_child");
started_art_perc_adult=request.getParameter("started_art_perc_adult");
started_art_perc_all=request.getParameter("started_art_perc_all");
viral_test_perc_child=request.getParameter("viral_test_perc_child");
viral_test_perc_adult=request.getParameter("viral_test_perc_adult");
viral_test_perc_all=request.getParameter("viral_test_perc_all");
ipt_done_perc_child=request.getParameter("ipt_done_perc_child");
ipt_done_perc_adult=request.getParameter("ipt_done_perc_adult");
ipt_done_perc_all=request.getParameter("ipt_done_perc_all");
tested_perc_child=request.getParameter("tested_perc_child");
tested_perc_adult=request.getParameter("tested_perc_adult");
tested_perc_all=request.getParameter("tested_perc_all");
           
       
        
        //comments
viral_load_mothers_cmts=request.getParameter("viral_load_mothers_cmts");
eid_done_cmts=request.getParameter("eid_done_cmts");
pmtct_hiv_pos_cmts=request.getParameter("pmtct_hiv_pos_cmts");

hiv_pos_care_cmts=request.getParameter("hiv_pos_care_cmts");
hiv_pos_yield_cmts=request.getParameter("hiv_pos_yield_cmts");
started_art_cmts=request.getParameter("started_art_cmts");
viral_test_cmts=request.getParameter("viral_test_cmts");
ipt_done_cmts=request.getParameter("ipt_done_cmts");
tested_cmts=request.getParameter("tested_cmts");
         
       
           
           
           
          
           
           
         
              
                  
           String checkexisting="select id from weekly_data_new where id  like '"+id+"' and user='"+user+"'"; 
           //String checkexisting="select id from weekly_data_new where id='"+id+"' "; 
           //users should maintain the same date range
            
            /* TODO output your page here. You may use following sample code. */
         
   conn.rs=conn.st.executeQuery(checkexisting);
   
   if(conn.rs.next()){
       System.out.println(" Data for "+facilityname+" already added ");
   
   //do update code here
   
   
   
// viral_load_mothers_perc,eid_done_perc,pmtct_hiv_pos_perc,access_viralload_perc,linkage_perc,hiv_pos_yield_perc,Testing_uptake_perc,outpatient_hiv_pos_perc,inpatient_hiv_pos_perc,outpatient_uptake_perc,inpatient_uptake_perc,viral_load_mothers_cmts,eid_done_cmts,pmtct_hiv_pos_cmts,access_viralload_cmts,linkage_cmts,hiv_pos_yield_cmts,Testing_uptake_cmts,outpatient_hiv_pos_cmts,inpatient_hiv_pos_cmts,outpatient_uptake_cmts,inpatient_uptake_cmts,    
// viral_load_mothers_perc,eid_done_perc,pmtct_hiv_pos_perc,access_viralload_perc,linkage_perc,hiv_pos_yield_perc,Testing_uptake_perc,outpatient_hiv_pos_perc,inpatient_hiv_pos_perc,outpatient_uptake_perc,inpatient_uptake_perc,viral_load_mothers_cmts,eid_done_cmts,pmtct_hiv_pos_cmts,access_viralload_cmts,linkage_cmts,hiv_pos_yield_cmts,Testing_uptake_cmts,outpatient_hiv_pos_cmts,inpatient_hiv_pos_cmts,outpatient_uptake_cmts,inpatient_uptake_cmts,    
       
         String insert=" update weekly_data_new set facilityname=?, startdate=?, enddate=?, hiv_pos_target_child= ? ,hiv_pos_target_adult= ? ,hiv_pos_target_total= ? ,hiv_pos_child= ? , hiv_pos_adult= ? "
                 + " ,hiv_pos_total= ? ,new_care_child= ? ,new_care_adult= ? ,new_care_total= ? ,new_art_target_child= ? ,new_art_target_adult= ? ,new_art_target_total= ? ,started_art_child= ? "
                 + " ,started_art_adult= ? ,started_art_total= ? ,viral_load_target_child= ? ,viral_load_target_adult= ? ,viral_load_target_total= ? ,viral_load_done_child= ? "
                 + " ,viral_load_done_adult= ? ,viral_load_done_total= ? ,ipt_target_child= ? ,ipt_target_adult= ? ,ipt_target_total= ? ,ipt_child= ? ,ipt_adult= ? ,ipt_total= ? "
                 + " ,testing_target_child= ? ,testing_target_adult= ? ,testing_target_total= ? ,test_child= ? ,test_adult= ? ,test_total=? "
                 + " ,pmtct_hiv_pos_target=?,pmtct_hiv_pos=?,eid_target=?,eid_done=?,viral_load_mothers_target=?,viral_load_mothers_done=?,"
                 + " user =?,hiv_pos_yield_perc_child= ? ,hiv_pos_yield_perc_adult= ? ,hiv_pos_yield_perc_all= ? ,hiv_pos_care_perc_child= ? ,hiv_pos_care_perc_adult= ? , "
                 + " hiv_pos_care_perc_all= ? ,started_art_perc_child= ? ,started_art_perc_adult= ? ,started_art_perc_all= ? ,viral_test_perc_child= ? ,viral_test_perc_adult= ? "
                 + " ,viral_test_perc_all= ? ,ipt_done_perc_child= ? ,ipt_done_perc_adult= ? ,ipt_done_perc_all= ? ,tested_perc_child= ? ,tested_perc_adult= ? ,tested_perc_all= ? "
                 + " ,hiv_pos_yield_cmts= ? ,hiv_pos_care_cmts= ? ,started_art_cmts= ? ,viral_test_cmts= ? ,ipt_done_cmts= ? ,tested_cmts=?,viral_load_mothers_perc=?,eid_done_perc=? "
                 + " ,pmtct_hiv_pos_perc=?  ,viral_load_mothers_cmts=? ,eid_done_cmts=?,pmtct_hiv_pos_cmts=? "
                 + " where id='"+id+"' ";
                      conn.pst1=conn.conne.prepareStatement(insert);   
//facilityname.startdate.enddate.hiv_pos_target_child.hiv_pos_target_adult.hiv_pos_target_total.hiv_pos_child.hiv_pos_adult.hiv_pos_total.new_care_child.new_care_adult.new_care_total.new_art_target_child.new_art_target_adult.new_art_target_total.started_art_child.started_art_adult.started_art_total.viral_load_target_child.viral_load_target_adult.viral_load_target_total.viral_load_done_child.viral_load_done_adult.viral_load_done_total.ipt_target_child.ipt_target_adult.ipt_target_total.ipt_child.ipt_adult.ipt_total.testing_target_child.testing_target_adult.testing_target_total.test_child.test_adult.test_total.pmtct_hiv_pos_target.pmtct_hiv_pos.eid_target.eid_done.viral_load_mothers_target.viral_load_mothers_done.user.hiv_pos_yield_perc_child.hiv_pos_yield_perc_adult.hiv_pos_yield_perc_all.hiv_pos_care_perc_child.hiv_pos_care_perc_adult.hiv_pos_care_perc_all.started_art_perc_child.started_art_perc_adult.started_art_perc_all.viral_test_perc_child.viral_test_perc_adult.viral_test_perc_all.ipt_done_perc_child.ipt_done_perc_adult.ipt_done_perc_all.tested_perc_child.tested_perc_adult.tested_perc_all.hiv_pos_yield_cmts.hiv_pos_care_cmts.started_art_cmts.viral_test_cmts.ipt_done_cmts.tested_cmts.viral_load_mothers_perc.eid_done_perc.pmtct_hiv_pos_perc.viral_load_mothers_cmts.eid_done_cmts.pmtct_hiv_pos_cmts
                          
                        conn.pst1.setString(1,facilityname);
                        conn.pst1.setString(2,startdate);
                        conn.pst1.setString(3,enddate);                        
                        conn.pst1.setString(4,hiv_pos_target_child);
                        conn.pst1.setString(5,hiv_pos_target_adult);
                        conn.pst1.setString(6,hiv_pos_target_total);
                        conn.pst1.setString(7,hiv_pos_child);
                        conn.pst1.setString(8,hiv_pos_adult);
                        conn.pst1.setString(9,hiv_pos_total);
                        conn.pst1.setString(10,new_care_child);
                        conn.pst1.setString(11,new_care_adult);
                        conn.pst1.setString(12,new_care_total);
                        conn.pst1.setString(13,new_art_target_child);
                        conn.pst1.setString(14,new_art_target_adult);                        
                        conn.pst1.setString(15,new_art_target_total);
                        conn.pst1.setString(16,started_art_child);
                        conn.pst1.setString(17,started_art_adult);
                        conn.pst1.setString(18,started_art_total); 
                        conn.pst1.setString(19,viral_load_target_child);
                        conn.pst1.setString(20,viral_load_target_adult);                        
                        conn.pst1.setString(21,viral_load_target_total);                        
                        conn.pst1.setString(22,viral_load_done_child);
                        conn.pst1.setString(23,viral_load_done_adult);
                        conn.pst1.setString(24,viral_load_done_total);
                        conn.pst1.setString(25,ipt_target_child);
                        conn.pst1.setString(26,ipt_target_adult);
                        conn.pst1.setString(27,ipt_target_total);
                        conn.pst1.setString(28,ipt_child);                       
                        conn.pst1.setString(29,ipt_adult);
                        conn.pst1.setString(30,ipt_total);
                        conn.pst1.setString(31,testing_target_child);
                        conn.pst1.setString(32,testing_target_adult);
                        conn.pst1.setString(33,testing_target_total);
                        conn.pst1.setString(34,test_child);
                        conn.pst1.setString(35,test_adult);
                        conn.pst1.setString(36,test_total);
                        conn.pst1.setString(37,pmtct_hiv_pos_target);
                        conn.pst1.setString(38,pmtct_hiv_pos);
                        conn.pst1.setString(39,eid_target);
                        conn.pst1.setString(40,eid_done);                        
                        conn.pst1.setString(41,viral_load_mothers_target);
                        conn.pst1.setString(42,viral_load_mothers_done);
                        conn.pst1.setString(43,user);
                        conn.pst1.setString(44,hiv_pos_yield_perc_child);
                        conn.pst1.setString(45,hiv_pos_yield_perc_adult);
                        conn.pst1.setString(46,hiv_pos_yield_perc_all);
                        conn.pst1.setString(47,hiv_pos_care_perc_child);
                        conn.pst1.setString(48,hiv_pos_care_perc_adult);
                        conn.pst1.setString(49,hiv_pos_care_perc_all);
                        conn.pst1.setString(50,started_art_perc_child);
                        conn.pst1.setString(51,started_art_perc_adult);
                        conn.pst1.setString(52,started_art_perc_all);
                        conn.pst1.setString(53,viral_test_perc_child);
                        conn.pst1.setString(54,viral_test_perc_adult);
                        conn.pst1.setString(55,viral_test_perc_all);
                        conn.pst1.setString(56,ipt_done_perc_child);
                        conn.pst1.setString(57,ipt_done_perc_adult);
                        conn.pst1.setString(58,ipt_done_perc_all);
                        conn.pst1.setString(59,tested_perc_child);
                        conn.pst1.setString(60,tested_perc_adult);
                        conn.pst1.setString(61,tested_perc_all);
                        conn.pst1.setString(62,hiv_pos_yield_cmts);
                        conn.pst1.setString(63,hiv_pos_care_cmts);
                        conn.pst1.setString(64,started_art_cmts);
                        conn.pst1.setString(65,viral_test_cmts);
                        conn.pst1.setString(66,ipt_done_cmts);
                        conn.pst1.setString(67,tested_cmts);
                        conn.pst1.setString(68,viral_load_mothers_perc);
                        conn.pst1.setString(69,eid_done_perc);
                        conn.pst1.setString(70,pmtct_hiv_pos_perc);
                        conn.pst1.setString(71,viral_load_mothers_cmts);
                        conn.pst1.setString(72,eid_done_cmts);
                        conn.pst1.setString(73,pmtct_hiv_pos_cmts);
                   
                        
                        
                        if(conn.pst1.executeUpdate()==1)
                        {    
                            txtresponse="<font color='green'> Data for <b> "+facilityname+" </b> updated succesfully for dates "+startdate+" to "+enddate+" </font>";
                             sm.Sendemail("MOIS IMPORT","Hi ,  \nThis is to notify you that data for "+facilityname+" has been updated succesfully by user "+user+" for dates "+startdate+" to "+enddate+". \n \nPlease  do not reply to this mail. It is system generated ", "Updated MOIS Data for  "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org");
                             
                        }
                        else 
                        {
                        txtresponse="<font color='green'>Data for <b>"+facilityname+"</b></font><font color='red'> NOT updated </font><font color='green'> for dates "+startdate+" to "+enddate+". This is because data for a similar date already exists. </font>";
                        }
   
   
                       System.out.println(" update weekly_data_new set facilityname='"+facilityname+"', startdate='"+startdate+"', enddate='"+enddate+"', hiv_pos_target_child='"+hiv_pos_target_child+"' ,hiv_pos_target_adult='"+hiv_pos_target_adult+"' ,hiv_pos_target_total='"+hiv_pos_target_total+"' ,hiv_pos_child='"+hiv_pos_child+"' , hiv_pos_adult='"+hiv_pos_adult+"' "
                 + " ,hiv_pos_total='"+hiv_pos_total+"' ,new_care_child='"+new_care_child+"' ,new_care_adult='"+new_care_adult+"' ,new_care_total='"+new_care_total+"' ,new_art_target_child='"+new_art_target_child+"' ,new_art_target_adult='"+new_art_target_adult+"' ,new_art_target_total='"+new_art_target_total+"' ,started_art_child='"+started_art_child+"' "
                 + " ,started_art_adult='"+started_art_adult+"' ,started_art_total='"+started_art_total+"' ,viral_load_target_child='"+viral_load_target_child+"' ,viral_load_target_adult='"+viral_load_target_adult+"' ,viral_load_target_total='"+viral_load_target_total+"' ,viral_load_done_child='"+viral_load_done_child+"' "
                 + " ,viral_load_done_adult='"+viral_load_done_adult+"' ,viral_load_done_total='"+viral_load_done_total+"' ,ipt_target_child='"+ipt_target_child+"' ,ipt_target_adult='"+ipt_target_adult+"' ,ipt_target_total='"+ipt_target_total+"' ,ipt_child='"+ipt_child+"' ,ipt_adult='"+ipt_adult+"' ,ipt_total='"+ipt_total+"' "
                 + " ,testing_target_child='"+testing_target_child+"' ,testing_target_adult='"+testing_target_adult+"' ,testing_target_total='"+testing_target_total+"' ,test_child='"+test_child+"' ,test_adult='"+test_adult+"' ,test_total='"+test_total+"' "
                 + " ,pmtct_hiv_pos_target='"+pmtct_hiv_pos_target+"',pmtct_hiv_pos='"+pmtct_hiv_pos+"',eid_target='"+eid_target+"',eid_done='"+eid_done+"',viral_load_mothers_target='"+viral_load_mothers_target+"',viral_load_mothers_done='"+viral_load_mothers_done+"',"
                 + " user ='"+user+"',hiv_pos_yield_perc_child='"+hiv_pos_yield_perc_child+"' ,hiv_pos_yield_perc_adult='"+hiv_pos_yield_perc_adult+"' ,hiv_pos_yield_perc_adult='"+hiv_pos_yield_perc_adult+"' ,hiv_pos_care_perc_child='"+hiv_pos_care_perc_child+"' ,hiv_pos_care_perc_adult='"+hiv_pos_care_perc_adult+"' , "
                 + " hiv_pos_care_perc_all='"+hiv_pos_care_perc_all+"' ,started_art_perc_child='"+started_art_perc_child+"' ,started_art_perc_adult='"+started_art_perc_adult+"' ,started_art_perc_all='"+started_art_perc_all+"' ,viral_test_perc_child='"+viral_test_perc_child+"' ,viral_test_perc_adult='"+viral_test_perc_adult+"' "
                 + " ,viral_test_perc_all='"+viral_test_perc_all+"' ,ipt_done_perc_child='"+ipt_done_perc_child+"' ,ipt_done_perc_adult='"+ipt_done_perc_adult+"' ,ipt_done_perc_all='"+ipt_done_perc_all+"' ,tested_perc_child='"+tested_perc_child+"' ,tested_perc_adult='"+tested_perc_adult+"' ,tested_perc_all='"+tested_perc_all+"' "
                 + " ,hiv_pos_yield_cmts='"+hiv_pos_yield_cmts+"' ,hiv_pos_care_cmts='"+hiv_pos_care_cmts+"' ,started_art_cmts='"+started_art_cmts+"' ,viral_test_cmts='"+viral_test_cmts+"' ,ipt_done_cmts='"+ipt_done_cmts+"' ,tested_cmts='"+tested_cmts+"',viral_load_mothers_perc='"+viral_load_mothers_perc+"',eid_done_perc='"+eid_done_perc+"' "
                 + " ,pmtct_hiv_pos_perc='"+pmtct_hiv_pos_perc+"'  ,viral_load_mothers_cmts='"+viral_load_mothers_cmts+"' ,eid_done_cmts='"+eid_done_cmts+"',pmtct_hiv_pos_cmts='"+pmtct_hiv_pos_cmts+"' "
                 + " where id='"+id+"' ");
                        
   
   }
   else 
   {
   //do insert code here
   
       System.out.println("insert into weekly_data_new"
  + "( id,facilityname,startdate,enddate, hiv_pos_target_child  ,hiv_pos_target_adult  ,hiv_pos_target_total ,hiv_pos_child , hiv_pos_adult   ,hiv_pos_total  ,new_care_child  ,new_care_adult  ,new_care_total  ,new_art_target_child  ,new_art_target_adult  ,new_art_target_total  ,started_art_child ,started_art_adult  ,started_art_total  ,viral_load_target_child  ,viral_load_target_adult  ,viral_load_target_total  ,viral_load_done_child  ,viral_load_done_adult  ,viral_load_done_total  ,ipt_target_child  ,ipt_target_adult  ,ipt_target_total  ,ipt_child  ,ipt_adult  ,ipt_total  ,testing_target_child  ,testing_target_adult  ,testing_target_total  ,test_child  ,test_adult  ,test_total , pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done,viral_load_mothers_target,viral_load_mothers_done,user ,hiv_pos_yield_perc_child  ,hiv_pos_yield_perc_adult  ,hiv_pos_yield_perc_all  ,hiv_pos_care_perc_child  ,hiv_pos_care_perc_adult  , hiv_pos_care_perc_all  ,started_art_perc_child  ,started_art_perc_adult  ,started_art_perc_all  ,viral_test_perc_child  ,viral_test_perc_adult ,viral_test_perc_all  ,ipt_done_perc_child  ,ipt_done_perc_adult  ,ipt_done_perc_all  ,tested_perc_child  ,tested_perc_adult  ,tested_perc_all  ,hiv_pos_yield_cmts  ,hiv_pos_care_cmts  ,started_art_cmts  ,viral_test_cmts  ,ipt_done_cmts  ,tested_cmts,viral_load_mothers_perc,eid_done_perc  ,pmtct_hiv_pos_perc  ,viral_load_mothers_cmts,eid_done_cmts,pmtct_hiv_pos_cmts  ) "
+ " values ('"+id+"','"+facilityname+"','"+startdate+"','"+enddate+"','"+hiv_pos_target_child+"','"+hiv_pos_target_adult+"','"+hiv_pos_target_total+"','"+hiv_pos_child+"','"+hiv_pos_adult+"',"
  + "'"+hiv_pos_total+"','"+new_care_child+"','"+new_care_adult+"','"+new_care_total+"','"+new_art_target_child+"','"+new_art_target_adult+"','"+new_art_target_total+"','"+started_art_child+"',"
  + "'"+started_art_adult+"','"+started_art_total+"','"+viral_load_target_child+"','"+viral_load_target_adult+"','"+viral_load_target_total+"','"+viral_load_done_child+"','"+viral_load_done_adult+"',"
  + "'"+viral_load_done_total+"','"+ipt_target_child+"','"+ipt_target_adult+"','"+ipt_target_total+"','"+ipt_child+"','"+ipt_adult+"','"+ipt_total+"','"+testing_target_child+"','"+testing_target_adult+"',"
         + "'"+testing_target_total+"','"+test_child+"','"+test_adult+"','"+test_total+"','"+pmtct_hiv_pos_target+"','"+pmtct_hiv_pos+"','"+eid_target+"','"+eid_done+"','"+viral_load_mothers_target+"',"
         + "'"+viral_load_mothers_done+"','"+user+"','"+hiv_pos_yield_perc_child+"','"+hiv_pos_yield_perc_adult+"','"+hiv_pos_yield_perc_all+"','"+hiv_pos_care_perc_child+"','"+hiv_pos_care_perc_adult+"',"
         + "'"+hiv_pos_care_perc_all+"','"+started_art_perc_child+"','"+started_art_perc_adult+"','"+started_art_perc_all+"','"+viral_test_perc_child+"','"+viral_test_perc_adult+"','"+viral_test_perc_all+"',"
         + "'"+ipt_done_perc_child+"','"+ipt_done_perc_adult+"','"+ipt_done_perc_all+"','"+tested_perc_child+"','"+tested_perc_adult+"','"+tested_perc_all+"','"+hiv_pos_yield_cmts+"','"+hiv_pos_care_cmts+"',"
         + "'"+started_art_cmts+"','"+viral_test_cmts+"','"+ipt_done_cmts+"','"+tested_cmts+"','"+viral_load_mothers_perc+"','"+eid_done_perc+"','"+pmtct_hiv_pos_perc+"','"+viral_load_mothers_cmts+"','"+eid_done_cmts+"','"+pmtct_hiv_pos_cmts+"')");                   
            
         
       
         String insert="insert into weekly_data_new( id,facilityname,startdate,enddate, hiv_pos_target_child  ,hiv_pos_target_adult  ,hiv_pos_target_total ,hiv_pos_child , hiv_pos_adult   ,hiv_pos_total  ,new_care_child  ,new_care_adult  ,new_care_total  ,new_art_target_child  ,new_art_target_adult  ,new_art_target_total  ,started_art_child ,started_art_adult  ,started_art_total  ,viral_load_target_child  ,viral_load_target_adult  ,viral_load_target_total  ,viral_load_done_child  ,viral_load_done_adult  ,viral_load_done_total  ,ipt_target_child  ,ipt_target_adult  ,ipt_target_total  ,ipt_child  ,ipt_adult  ,ipt_total  ,testing_target_child  ,testing_target_adult  ,testing_target_total  ,test_child  ,test_adult  ,test_total , pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done,viral_load_mothers_target,viral_load_mothers_done,user ,hiv_pos_yield_perc_child  ,hiv_pos_yield_perc_adult  ,hiv_pos_yield_perc_all  ,hiv_pos_care_perc_child  ,hiv_pos_care_perc_adult  , hiv_pos_care_perc_all  ,started_art_perc_child  ,started_art_perc_adult  ,started_art_perc_all  ,viral_test_perc_child  ,viral_test_perc_adult ,viral_test_perc_all  ,ipt_done_perc_child  ,ipt_done_perc_adult  ,ipt_done_perc_all  ,tested_perc_child  ,tested_perc_adult  ,tested_perc_all  ,hiv_pos_yield_cmts  ,hiv_pos_care_cmts  ,started_art_cmts  ,viral_test_cmts  ,ipt_done_cmts  ,tested_cmts,viral_load_mothers_perc,eid_done_perc  ,pmtct_hiv_pos_perc  ,viral_load_mothers_cmts,eid_done_cmts,pmtct_hiv_pos_cmts  ) "
                 + " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                      conn.pst1=conn.conne.prepareStatement(insert);    
                          
                 conn.pst1.setString(1,id);
                        conn.pst1.setString(2,facilityname);
                        conn.pst1.setString(3,startdate);
                        conn.pst1.setString(4,enddate);
                        conn.pst1.setString(5,hiv_pos_target_child);
                        conn.pst1.setString(6,hiv_pos_target_adult);
                        conn.pst1.setString(7,hiv_pos_target_total);
                        conn.pst1.setString(8,hiv_pos_child);
                        conn.pst1.setString(9,hiv_pos_adult);
                        conn.pst1.setString(10,hiv_pos_total);
                        conn.pst1.setString(11,new_care_child);
                        conn.pst1.setString(12,new_care_adult);
                        conn.pst1.setString(13,new_care_total);
                        conn.pst1.setString(14,new_art_target_child);
                        conn.pst1.setString(15,new_art_target_adult);
                        conn.pst1.setString(16,new_art_target_total);
                        conn.pst1.setString(17,started_art_child);
                        conn.pst1.setString(18,started_art_adult);
                        conn.pst1.setString(19,started_art_total);
                        conn.pst1.setString(20,viral_load_target_child);
                        conn.pst1.setString(21,viral_load_target_adult);
                        conn.pst1.setString(22,viral_load_target_total); 
                        conn.pst1.setString(23,viral_load_done_child);
                        conn.pst1.setString(24,viral_load_done_adult);
                        conn.pst1.setString(25,viral_load_done_total);
                        conn.pst1.setString(26,ipt_target_child);
                        conn.pst1.setString(27,ipt_target_adult);
                        conn.pst1.setString(28,ipt_target_total);
                        conn.pst1.setString(29,ipt_child);                       
                        conn.pst1.setString(30,ipt_adult);
                        conn.pst1.setString(31,ipt_total);
                        conn.pst1.setString(32,testing_target_child);
                        conn.pst1.setString(33,testing_target_adult);
                        conn.pst1.setString(34,testing_target_total);
                        conn.pst1.setString(35,test_child);
                        conn.pst1.setString(36,test_adult);
                        conn.pst1.setString(37,test_total);
                        conn.pst1.setString(38,pmtct_hiv_pos_target);
                        conn.pst1.setString(39,pmtct_hiv_pos);
                        conn.pst1.setString(40,eid_target);
                        conn.pst1.setString(41,eid_done);
                        conn.pst1.setString(42,viral_load_mothers_target);
                        conn.pst1.setString(43,viral_load_mothers_done);
                        conn.pst1.setString(44,user);
                        conn.pst1.setString(45,hiv_pos_yield_perc_child);
                        conn.pst1.setString(46,hiv_pos_yield_perc_adult);
                        conn.pst1.setString(47,hiv_pos_yield_perc_all);
                        conn.pst1.setString(48,hiv_pos_care_perc_child);
                        conn.pst1.setString(49,hiv_pos_care_perc_adult);
                        conn.pst1.setString(50,hiv_pos_care_perc_all);
                        conn.pst1.setString(51,started_art_perc_child);
                        conn.pst1.setString(52,started_art_perc_adult);
                        conn.pst1.setString(53,started_art_perc_all);
                        conn.pst1.setString(54,viral_test_perc_child);
                        conn.pst1.setString(55,viral_test_perc_adult);
                        conn.pst1.setString(56,viral_test_perc_all);
                        conn.pst1.setString(57,ipt_done_perc_child);
                        conn.pst1.setString(58,ipt_done_perc_adult);
                        conn.pst1.setString(59,ipt_done_perc_all);
                        conn.pst1.setString(60,tested_perc_child);
                        conn.pst1.setString(61,tested_perc_adult);
                        conn.pst1.setString(62,tested_perc_all);
                        conn.pst1.setString(63,hiv_pos_yield_cmts);
                        conn.pst1.setString(64,hiv_pos_care_cmts);
                        conn.pst1.setString(65,started_art_cmts);
                        conn.pst1.setString(66,viral_test_cmts);
                        conn.pst1.setString(67,ipt_done_cmts);
                        conn.pst1.setString(68,tested_cmts);
                        conn.pst1.setString(69,viral_load_mothers_perc);
                        conn.pst1.setString(70,eid_done_perc);
                        conn.pst1.setString(71,pmtct_hiv_pos_perc);
                        conn.pst1.setString(72,viral_load_mothers_cmts);
                        conn.pst1.setString(73,eid_done_cmts);
                        conn.pst1.setString(74,pmtct_hiv_pos_cmts);
            
                     
                        
                        
                        if(conn.pst1.executeUpdate()==1){
                            
                            txtresponse="<font color='green'> Data for "+facilityname+" added succesfully for dates "+startdate+" to "+enddate+" </font>";
                           
                            //add team leaders variable at this point 
                            sm.Sendemail("MOIS IMPORT"," Hi, \nThis is to notify you that new data for "+facilityname+" has been added succesfully by   user "+user+" for dates "+startdate+" to "+enddate+". \n \n Please do not reply to this mail. It is system generated ", "MOIS data export for "+facilityname+" & dates "+startdate+" to "+enddate,"EKaunda@fhi360.org");
                                                        } 
                        else {
                            
                          txtresponse="<font color='green'>Data for "+facilityname+" </font><font color='red'>  NOT inserted </font><font color='green'> succesfully for dates "+startdate+" to "+enddate+". This could be a duplicate error. </font>";
                            
                             }
       
       
   }
           
   
         if(conn.st!=null){conn.st.close();}  
         if(conn.rs!=null){conn.rs.close();}  
         if(conn.pst1!=null){conn.pst1.close();}  
         if(conn.conne!=null){conn.conne.close();}  
        
   
        } catch (SQLException ex) {
            Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex);
             txtresponse="<font color='red'>Data for "+facilityname+" NOT inserted succesfully for dates "+startdate+" to "+enddate+".  "+ex+" </font>";
        //send an email at this point of the exception
            
            try {
                sm.Sendemail("MOIS IMPORT",ex.toString(), "MYSQL IMPORTING ERROR ","EKaunda@fhi360.org");
            } catch (MessagingException ex1) {
                Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex1);
            }
            
        } catch (MessagingException ex) {
            Logger.getLogger(importweeklydata.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
      out.println(txtresponse);   
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
