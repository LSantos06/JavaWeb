<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

	<body>
	
	<c:import url="cabecalho.jsp" />
	
	 <!-- cria o DAO -->
	          <table border="1">
	        	<c:forEach var="contato" items="${contatos}" varStatus="id">
	            <tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }" >
	                <td>${id.count}</td><td>${contato.nome}</td>
	                <td>
					    <c:choose>
					        <c:when test="${not empty contato.email}">
					            <a href="mailto:${contato.email}">${contato.email}</a>
					        </c:when>
					        <c:otherwise>
					            E-mail não informado
					        </c:otherwise>
					    </c:choose>
	                </td>
	                <td>${contato.endereco}</td>
	                <td>
	                	<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" />
	          		</td>
	          		<td>
         				<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
       				</td>
	            </tr>
	        </c:forEach>
	    </table>
	
	<c:import url="rodape.jsp" />
	          
	</body>
</html>