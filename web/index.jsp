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
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bsTheme.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
        <%
            Object responseType = request.getParameter("submit");
            %>
        <form method="post" action="CalcController" role="form">
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <div class="form-group">
            <label for="rLength">Length</label><br/>
            <input type="number" name="rLength" id="rLength" value=""/><br/>
            </div><div class="form-group">
            <label for="rWidth">Width</label><br/>
            <input type="number" name="rWidth" id="rWidth" value=""/><br/>
            </div>
            <input type="submit" class="btn btn-info" name="submit" value="rec"/><% 
            if(responseType != null && responseType.equals("rec")){
                Object area = request.getAttribute("area");
                out.print("<hr/><div class=\"alert alert-success\" role=\"alert\"><p>"+area);
               %>
               is the area of the rectange.</p></div>
        <%
            }
            %>
            <hr/>
            <h4>To calculate the area of a circle, input the length and width</h4><hr/>
            <div class="form-group">
            <label for="radius">Radius</label><br/>
            <input type="number" name="radius" id="radius" value=""/><br/>
            </div>
            <input type="submit" class="btn btn-info" name="submit" value="circle"/>
            <%
            if(responseType != null && responseType.equals("circle")){
                Object cArea = request.getAttribute("cArea");
                String circle = cArea.toString();
                circle = circle.substring(0, circle.indexOf('.')+3);
                
                out.print("<hr/><div class=\"alert alert-success\" role=\"alert\"><p>"+circle);
               %>
               is roughly the area of the circle.</p></div>
        <%
            }
            %>
            <hr/>
            <h4>To calculate the area of a triangle, input the length and width</h4><hr/>
            <div class="form-group">
            <label for="base">Base</label><br/>
            <input type="number" name="base" id="base" value=""/><br/>
            </div><div class="form-group">
            <label for="height">Height</label><br/>
            <input type="number" name="height" id="height" value=""/><br/>
            </div>
            <input type="submit" class="btn btn-info" name="submit" value="triangle"/>
            <%
            if(responseType != null && responseType.equals("triangle")){
                Object tArea = request.getAttribute("tArea");
                out.print("<hr/><div class=\"alert alert-success\" role=\"alert\"><p>"+tArea);
               %>
               is the area of the triangle.</p></div>
        <%
            }
            %>
        </form>
        </div>
        <script src="bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>

