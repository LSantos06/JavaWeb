<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
	<head>
        <link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
    </head>
    <body>
        <h3>Adicionar tarefas</h3>
        
	    <form action="adicionaTarefa" method="post">
	        Descrição:
	            <br/>
	        <textarea rows="5" cols="100" name="descricao"></textarea> 
	            <br/>         
	        <form:errors path="tarefa.descricao" cssStyle="color:red"/>
	            <br/>
	        <input type="submit" value="Adicionar"/>
	    </form>
        
    </body>
</html>