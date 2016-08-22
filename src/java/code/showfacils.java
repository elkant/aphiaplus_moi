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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Emmanuel E
 */
public class showfacils extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            dbConnweb conn= new dbConnweb();
            
           
            
            JSONArray jarr=new JSONArray();
            String getfacils="SELECT mflcode,county,subcounty,facility_name,longitude,latitude,sitetype FROM  facility where mflcode in (select facility from targets)  order by facility_name";
            
            conn.rs=conn.st.executeQuery(getfacils);
            while (conn.rs.next()){
                 JSONObject jobj= new JSONObject();
            jobj.put("mflcode",conn.rs.getString("mflcode"));
            jobj.put("county",conn.rs.getString("county"));
            jobj.put("subcounty",conn.rs.getString("subcounty"));
            jobj.put("facility_name",conn.rs.getString("facility_name"));
            jobj.put("longitude",conn.rs.getString("longitude"));
            jobj.put("latitude",conn.rs.getString("latitude"));
            jobj.put("sitetype",conn.rs.getString("sitetype"));
              
            jarr.put(jobj);
                
            
            }
            
            
            if(conn.rs!=null){conn.rs.close();}
            if(conn.st!=null){conn.st.close();}
            if(conn.conne!=null){conn.conne.close();}
          // System.out.println(""+jarr); 
            response.setContentType("text/html;charset=UTF-8");
            response.setHeader("Access-Control-Allow-Origin", "*");
            try (PrintWriter out = response.getWriter()) {
                
                
                out.println(jarr);
            }
        }   catch (SQLException ex) {
            Logger.getLogger(showfacils.class.getName()).log(Level.SEVERE, null, ex);
        }
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
