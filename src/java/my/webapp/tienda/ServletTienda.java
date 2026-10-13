
package my.webapp.tienda;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class ServletTienda extends HttpServlet {

    
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action= request.getParameter("action");
            
             DAOTienda dao= new DAOTienda ();
            
            if (action== null) {  // trabajamos el delete
            request.setAttribute("productList", dao.getall());
            request.getRequestDispatcher("tienda.jsp").forward(request, response);

            }else if (action.equals("delete")) {  // trabajamos el delete
                
             int id= Integer.parseInt(request.getParameter("id"));   
                
              dao.delete(id);
              
              response.sendRedirect("ServletTienda");
            
            }
 
        
        
      
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String txtname = request.getParameter("txtname");
        double txtprice = Double.parseDouble(request.getParameter("txtprice"));
        int txtstock = Integer.parseInt(request.getParameter("txtstock"));
        

        DAOTienda dao = new DAOTienda();
        ClaseTienda tienda = new ClaseTienda(0, txtname, txtprice, txtstock);
        dao.insert(tienda);

       
        response.sendRedirect("ServletTienda");// par a que me   devuelva todos las datos includo el ultimo que
        
        
    }

   

}
