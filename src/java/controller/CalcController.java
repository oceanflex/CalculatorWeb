package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CircleCalc;
import model.RectangleCalc;
import model.TriangleCalc;

/**
 *
 * @author Zachary
 */
@WebServlet(name = "CalcController", urlPatterns = {"/CalcController"})
public class CalcController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String mode = request.getParameter("submit");
            RequestDispatcher view;
            String in;
            switch (mode) {
                case "rec":
                    in = request.getParameter("rLength");
                    int length = Integer.parseInt(in);
                    
                    in = request.getParameter("rWidth");
                    int width = Integer.parseInt(in);
                    
                    RectangleCalc rCalc = new RectangleCalc();
                    int area = rCalc.getArea(length,width);
                    
                    request.setAttribute("area",area);
                    break;
                case "circle":
                    in = request.getParameter("radius");
                    int radius = Integer.parseInt(in);
                    
                    CircleCalc cCalc = new CircleCalc();
                    double cArea = cCalc.getArea(radius);
                    
                    request.setAttribute("cArea",cArea);
                    break;
                case "triangle":
                    in = request.getParameter("base");
                    int base = Integer.parseInt(in);
                    
                    in = request.getParameter("height");
                    int height = Integer.parseInt(in);
                    
                    TriangleCalc tCalc = new TriangleCalc();
                    double tArea = tCalc.getArea(base,height);
                    
                    request.setAttribute("tArea",tArea);
                    
                    break;
                default:
                    
                    break;
            }
            
            view = request.getRequestDispatcher("index.jsp");
            
            view.forward(request, response);
        }catch(Exception e){
            
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
