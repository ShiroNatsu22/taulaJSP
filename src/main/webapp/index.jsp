<%@ page import="ArchivoPambisito.Arxiu" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<html>
<head>
    <style>
        table tr:nth-child(odd) {
           background-color: pink;
        }

        table tr:nth-child(even) {
                    background-color: blue;
        }

        table,th,td{
        border: 2px solid white;
        }
        table{
        border-collapse: collapse;

        }
        h2{
           color:white;
        }
        body{

        background:black;
        }
    </style>
</head>
<body>
<h2>La taula de Hipito el Pambisito Sombisito</h2>

<%! Arxiu a = new Arxiu("hipito.godsito","SanPedro/Pambisito/",20);
    Arxiu b = new Arxiu("dalasito.pambisito","Infiernito/Pambisito/",666);
    Arxiu c = new Arxiu("caillou.calvisito","Dibujitos/Infantilitos/",50000);


    Arxiu[] lista = new Arxiu[]{a,b,c};
%>

<table>
    <tr>
        <th>Nom</th>
        <th>Ruta</th>
        <th>Tamany</th>
    </tr>
    <% for(Arxiu recorr : lista ){%>

        <tr>
            <td><%= recorr.nom %></td>
            <td><%= recorr.ruta %></td>
            <td><%= recorr.tamany %></td>
        </tr>

    <% }%>
</table>
</body>
</html>
