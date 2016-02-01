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
        <p>The area is <%
            Object responseObj = request.getAttribute("area");
            Object errObj = request.getAttribute("errorMsg");
                
            if(responseObj != null){
                out.println(responseObj.toString());
            }
            %>
            </p>
    </body>
</html>
