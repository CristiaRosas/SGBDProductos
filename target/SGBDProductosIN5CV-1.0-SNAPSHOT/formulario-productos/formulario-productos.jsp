<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    </head>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark fixed-top position-relative">
        <div class="container-fluid">
            <a class="navbar-brand" href="./index.jsp">Sistemas de Gestión de Productos</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel" href="./index.jsp">Sistemas de Gestión de Productos</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link " aria-current="page" href="../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="./formulario-productos.jsp">Formulario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../lista-productos/lista-productos.jsp">Lista de Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <div class="container text center">
        <%
            String nombreProducto = request.getParameter("nombreProducto");
            if (nombreProducto == null || nombreProducto.isEmpty()) {
        %>
        <h1>Por favor, completa el Nombre</h1>
        <%
        } else {
        %>
        <% ArrayList<String> datosProducto = (ArrayList) request.getAttribute("datosProducto");%>
        <% if (datosProducto != null) { %>
        <h1>El Producto Llego con exito</h1>
        <% for (String producto : datosProducto) {%>
        <ul>
            <li class="list-unstyled"><%=producto%></li>
        </ul>
        <% }%>
        <% }%>

        <h1>El Producto Llegó con éxito</h1>
        <%
            }
        %>

    </div>
    <div class="container w-100">
        <form class=" mt-3">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="nombreproducto" name="nombreProducto" placeholder="">
                <label for="nombreproducto">Nombre Del Producto</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="marcaproducto" name="marcaProducto" placeholder="">
                <label for="marcaproducto">Marca Del Producto</label>
            </div>
            <div class="form-floating mb-3">
                <textarea class="form-control" placeholder="Leave a comment here" id="descripcionproducto" name="descripcionProducto" style="height: 100px"></textarea>
                <label for="descripcionproducto">Descripción</label>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">Q.</span>
                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
            </div>
            <div>
                <input type ="submit"class ="btn btn-outline-success" value ="agregar">
            </div>
        </form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
