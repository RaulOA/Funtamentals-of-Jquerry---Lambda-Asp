<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Jquerry_y_Lambda.Jquerry.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ejemplo de jQuery y lambda en ASP.NET</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <hr />
            <h3>Jquerry</h3>
            <br />
            <button id="mi-boton">Haz clic aquí</button>
            <br />
            <button id="mi-div">Este cambia de color</button>
            <br />
            <hr />
            <br />
            <h3>Funcion Lambda</h3>
            <br />
            <div>Digite un numero:</div>
            <br />
            <input runat="server" id="txtnumero" type="number" />
            <br />
            <div runat="server" id="resultado"></div>
            <br />
            <button runat="server" id="sumar" onserverclick="sumar_ServerClick">Sumar 10</button>
            <br />
            <hr />
        </div>
    </form>

    <script>
        $(document).ready(() => {
            $("#mi-boton").click(() => {
                $("#mi-div").css("background-color", "red");
            });
        });
    </script>

    <%--<script>
        $(document).ready(function () {
            $("#mi-boton").click(function () {
                $("#mi-div").css("background-color", "red");
            });
        });
    </script>--%>
</body>
</html>
