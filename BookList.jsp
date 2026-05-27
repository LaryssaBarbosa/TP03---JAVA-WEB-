<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="br.com.bookstore.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Books Store Application</title>
</head>
<body>

    <center>
        <h1>Books Management</h1>
        <h2>
            <a href="${pageContext.request.contextPath}/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/list">List All Books</a>
        </h2>
    </center>

    <div align="center">
        <table border="1" cellpadding="5">
            <caption>
                <h2>List of Books</h2>
            </caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <%
                // Recupera a lista enviada pelo Servlet usando Java Puro
                List<Book> listBook = (List<Book>) request.getAttribute("listBook");
                if (listBook != null) {
                    for (Book book : listBook) {
            %>
                <tr>
                    <td><%= book.getId() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getPrice() %></td>
                    <td>
                        <a href="${pageContext.request.contextPath}/edit?id=<%= book.getId() %>">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/delete?id=<%= book.getId() %>">Delete</a>
                    </td>
                </tr>
            <% 
                    }
                } 
            %>
        </table>
    </div>

</body>
</html>