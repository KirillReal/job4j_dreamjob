<%--
  Created by IntelliJ IDEA.
  User: kiril
  Date: 24.04.2021
  Time: 3:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<nav>
    <div class="nav-wrapper container">
        <a class="brand-logo">Dream Job</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <c:if test="${empty user}">
                <li>
                    <a href='<c:url value="/auth.do" />'>Авторизация</a>
                </li>
                <li>
                    <a href='<c:url value="/reg.do" />'>Регистрация</a>
                </li>
            </c:if>
            <c:if test="${not empty user}">
                <li>
                    <a href='<c:url value="/index.do" />'>Главная</a>
                </li>
                <li>
                    <a href='<c:url value="/posts.do" />'>Вакансии</a>
                </li>
                <li>
                    <a href='<c:url value="/candidates.do" />'>Кандидаты</a>
                </li>
                <li>
                    <a href="<c:url value="/logout.do" />">Выйти</a>
                </li>
            </c:if>
        </ul>
    </div>
</nav>
