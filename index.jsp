<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Créditos da Dupla - Bookstore</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 100px; background-color: #f4f4f9; }
        .container { background: white; padding: 30px; display: inline-block; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); }
        h1 { color: #333; }
        .nomes { font-size: 18px; color: #555; margin: 20px 0; font-weight: bold; }
        .btn { display: inline-block; padding: 12px 24px; background-color: #28a745; color: white; text-decoration: none; border-radius: 5px; font-size: 16px; font-weight: bold; }
        .btn:hover { background-color: #218838; }
    </style>
</head>
<body>

    <div class="container">
        <h1>Sistema Bookstore 📚</h1>
        <hr>
        <h3>Trabalho Desenvolvido por:</h3>
        <div class="nomes">
            <p>👤 Laryssa Barbosa Soares</p>
            <p>👤Isabela Salgueiro</p>
        </div>
        <hr>
        <p>Clique abaixo para gerenciar o acervo de livros:</p>
        <a href="${pageContext.request.contextPath}/list" class="btn">Acessar Sistema de Livros</a>
    </div>

</body>
</html>