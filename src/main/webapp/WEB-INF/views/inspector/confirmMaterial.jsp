<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.06.2020
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zatwierdzanie materiałów</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Witaj w naszym portfolio!</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body>
<h2>Formularz zatwierdzenia.</h2>

<section class="section">
    <div class="allClassesContainer">
        <form:form method="post" modelAttribute="confirmList" action="/inspector/confirmMaterial">
            <div class="field">
                <div class="control">
                    <b> Nazwa materiału: ${confirmList.materials}</b>
                </div>
            </div>

            <div class="field">
                <div class="control">
                    <form:label path="comments"/>Komentarz / uwagi:
                    <form:textarea path="comments" class="textarea is-focused"
                                   placeholder="Text" />
                </div>
            </div>
            <div class="field">
                <div class="control">
                    <form:label path="approved"/>Akceptacja:
                    <form:input path="approved" class="input is-primary"  placeholder="Text"/>
                </div>
            </div>
            <div class="buttons">
            <form:hidden path="id"/>
            <form:button class="button is-primary">Wyślij</form:button>
            </div>
        </form:form>
    </div>
</section>
</body>
</html>
