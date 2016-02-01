<%-- 
    Document   : rectangle
    Created on : Feb 1, 2016, 3:12:26 PM
    Author     : Zachary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Area</title>
    </head>
    <body>
        <%
            Object responseObj = request.getAttribute("area");
            Object errObj = request.getAttribute("errorMsg");
                
            if(responseObj != null){%>
            <p>The area is 
            <% 
                out.println(responseObj.toString());
            %>
            .</p><p> Click <a href="rectangle.jsp">HERE</a> to go again</p>
            <% }else {%>
            <form method="post" id="rectangle" name="rectangle" action="rectangleController">
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <label for="rLength">Length</label>
            <input type="number" name="rLength" id="rLength" value=""/><br/>
            <label for="rWidth">Width</label>
            <input type="number" name="rWidth" id="rWidth" value=""/><br/>
            <input type="submit" name="rSubmit" id="rSubmit"/>
            <hr/><hr/>
            
        </form>
                        <%}%>
    </body>
</html>
