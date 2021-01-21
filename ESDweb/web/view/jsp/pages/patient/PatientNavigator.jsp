<%-- 
    Document   : Navigator
    Created on : 15-Dec-2020, 17:05:07
    Author     : Marken Tuan Nguyen
--%>

<%@page import="model.Patient"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" 
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
                integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" 
                crossorigin="anonymous"></script>
        <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
                
    </head>
    <body>
        <nav class="navbar navbar-light navbar-expand-lg bg-light">
            <div class="container-fluid ">
                <a class="btn btn-outline-success navbar-brand mb-0 h1" href="#">Patient Dashboard</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    
                    <form class="me-auto" method="post" action="PatientViewController">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <button type="submit" name="action" value="Home" class="btn">Home</button>
                            </li>
                            <li class="nav-item">
                                <button type="submit" name="action" value="My Appointment" class="btn">My Appointment</button>
                            </li>
                            <li class="nav-item">
                                <button type="submit" name="action" value="Request Refill" class="btn">Request Refill</button>
                            </li>
                            
                            
                        </ul>
                    </form>
                    
                    <div>
                        
                        <%Patient patient = (Patient) session.getAttribute("ThisPatientData");%>
                        <label>
                            Hi, <%=patient.getPatientName()%>
                        </label>
                    </div>
                    
                    <form action="SignOutServlet" method="POST">
                        <button type="submit" class="btn" value="GoHome">
                            <i data-feather="log-out"></i><script>feather.replace();</script>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>

