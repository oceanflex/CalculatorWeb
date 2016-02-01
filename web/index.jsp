<%-- 
    Document   : index
    Created on : Feb 1, 2016, 4:02:52 PM
    Author     : Zachary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator Application</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bsTheme.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
        <%
            Object responseType = request.getParameter("submit");
            %>
        <form method="post" action="CalcController" role="form">
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <label for="rLength">Length</label>
            <input type="number" name="rLength" id="rLength" value=""/><br/>
            <label for="rWidth">Width</label>
            <input type="number" name="rWidth" id="rWidth" value=""/><br/>
            <input type="submit" class="btn btn-info" name="submit" value="rec"/><% 
            if(responseType != null && responseType.equals("rec")){
                Object area = request.getAttribute("area");
                out.print("<p>"+area);
               %>
               is the area of the rectange.</p>
        <%
            }
            %>
            <hr/><hr/>
            <h4>To calculate the area of a circle, input the length and width</h4><hr/>
            <label for="radius">Radius</label>
            <input type="number" name="radius" id="radius" value=""/><br/>
            <input type="submit" class="btn btn-info" name="submit" value="circle"/>
            <%
            if(responseType != null && responseType.equals("circle")){
                Object cArea = request.getAttribute("cArea");
                out.print("<p>"+cArea);
               %>
               is the area of the circle.</p>
        <%
            }
            %>
            <hr/><hr/>
            <h4>To calculate the area of a triangle, input the length and width</h4><hr/>
            <label for="base">Base</label>
            <input type="number" name="base" id="base" value=""/><br/>
            <label for="height">Height</label>
            <input type="number" name="height" id="height" value=""/><br/>
            <input type="submit" class="btn btn-info" name="submit" value="triangle"/>
            <%
            if(responseType != null && responseType.equals("triangle")){
                Object tArea = request.getAttribute("tArea");
                out.print("<p>"+tArea);
               %>
               is the area of the triangle.</p>
        <%
            }
            %>
        </form>
        </div>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>

