<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.com.bookstore.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books Store Application</title>
    <style>
        .container {
            text-align: center;
        }
        table {
            border-collapse: collapse;
            margin: 0 auto; /* Centraliza a tabela */
        }
        table, th, td {
            border: 1px solid black; 
        }
        th, td {
            padding: 5px; 
        }
    </style>
</head>
<body>

    <%
        // Recupera o objeto livro caso seja uma edição (Edit)
        Book book = (Book) request.getAttribute("book");
    %>

    <center>
        <h1>Books Management</h1>
        <h2>
            <a href="${pageContext.request.contextPath}/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/list">List All Books</a>
        </h2>
    </center>

    <div class="container">
        
        <form action="${pageContext.request.contextPath}/<%= (book != null) ? "update" : "insert" %>" method="post">

            <table>
                <caption>
                    <h2>
                        <%= (book != null) ? "Edit Book" : "Add New Book" %>
                    </h2>
                </caption>

                <% if (book != null) { %>
                    <input type="hidden" name="id" value="<%= book.getId() %>" />
                <% } %>

                <tr>
                    <th>Title:</th>
                    <td>
                        <input type="text" name="title" size="45" value="<%= (book != null) ? book.getTitle() : "" %>" required />
                    </td>
                </tr>
                <tr>
                    <th>Author:</th>
                    <td>
                        <input type="text" name="author" size="45" value="<%= (book != null) ? book.getAuthor() : "" %>" required />
                    </td>
                </tr>
                <tr>
                    <th>Price:</th>
                    <td>
                        <input type="text" name="price" size="5" value="<%= (book != null) ? book.getPrice() : "" %>" required />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        
        </form>
    </div>

</body>
</html>