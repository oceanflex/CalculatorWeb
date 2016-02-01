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
    </head>
    <body>
        <%
            Object responseType = request.getAttribute("submit");
            if(responseType == null){
            %>
        <form method="post" action="CalcController">
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <label for="rLength">Length</label>
            <input type="number" name="rLength" id="rLength" value=""/><br/>
            <label for="rWidth">Width</label>
            <input type="number" name="rWidth" id="rWidth" value=""/><br/>
            <input type="submit" name="submit" value="rec"/>
            <hr/><hr/>
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <label for="radius">Radius</label>
            <input type="number" name="radius" id="radius" value=""/><br/>
            <input type="submit" name="submit" value="circle"/>
            <hr/><hr/>
            <h4>To calculate the area of a rectangle, input the length and width</h4><hr/>
            <label for="base">Base</label>
            <input type="number" name="base" id="base" value=""/><br/>
            <label for="height">Height</label>
            <input type="number" name="height" id="height" value=""/><br/>
            <input type="submit" name="submit" value="triangle"/>
            <hr/><hr/>
        </form>
        <% 
            }else if(responseType.equals("rec")){
               %>
               <p>rec time</p>
        <%
            }
            %>
    </body>
</html>
