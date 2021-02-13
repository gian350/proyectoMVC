<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MVC WEBSITE</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  </head>
  <body>
    <header class="py-3">
        <div class="container">
            <div class="row align-self-center justify-content-center">
                <div class="col-12 text-center text-black">
                    <h1>Welcome Prueba MVC</h1>
                </div>
                 <figure class="d-flex align-self-center justify-content-center m-0">
                     <img src="../../img/springBoot.png" class="w-50 h-50" alt="spring">
                 </figure>
            </div>
        </div>
    </header>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center">
                    <div class="col-4 d-flex justify-content-center">
                        <div class="col-8 p-0 m-0 d-flex justify-content-center">
                            <button type="button" class="btn btn-success btn-block m-2 w-50">Lista</button>
                            <button type="button" class="btn btn-success btn-block m-2 w-50">Nuevo</button>
                        </div>  
                    </div>
                </div>  
                
                <h3>Usuarios</h3>
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido Pat</th>
                        <th scope="col">Apellido Mat</th>
                        <th scope="col">Correo  </th>
                        <th scope="col">Acciones</th>
                      </tr>
                    </thead>
                    <tbody>
	                    <c:forEach items="${listUsers}" var="usuario" >
					     <tr>
					      <td>${usuario.id }</td>
					      <td>${usuario.nombre }</td>
					      <td>${usuario.apellidoPat }</td>
					      <td>${usuario.apellidoMat }</td>
					      <td>${usuario.correo }</td>
					      <td>
	                          <button type="button" class="btn btn-warning  ">Editar</button>
	                          <button type="button" class="btn btn-danger ">Delete</button>
                          </td>
					     </tr>
					    </c:forEach>
                    </tbody>
                  </table>    
                
            </div>
        </div>
    </section>







    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>