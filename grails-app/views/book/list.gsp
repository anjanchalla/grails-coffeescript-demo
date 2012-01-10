<%@ page import="org.example.demo.Book" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <r:require module="application"/>
    </head>
    <body>
        <div id="books">
            <g:each in="${books}" var="book">
                <div class="book">
                    <h3>${fieldValue(bean: book, field: "title")}</h3>
                    <p>${fieldValue(bean: book, field: "description")}</p>
                </div>
            </g:each>
            <div class="pagination">
                <g:paginate total="${bookTotal}"/>
            </div>
        </div>
    </body>
</html>