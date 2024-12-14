<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
    <h1>Login Form</h1>
    <form action="">
        <label for="inp" class="inp">
            <input type="email" id="email" placeholder="&nbsp;">
            <span class="label">Email</span>
            <span class="focus-bg"></span>
            <span id="emailError" class="error"></span>
        </label>

        <label for="inp" class="inp">
            <input type="password" id="psw" placeholder="&nbsp;">
            <span class="label">Password</span>
            <span class="focus-bg"></span>
            <span id="pswError" class="error"></span>
        </label>

        <label for="inp" class="inp">
            <input type="password" id="repetePsw" placeholder="&nbsp;">
            <span class="label">Repete Password</span>
            <span class="focus-bg"></span>
            <span id="repetePswError" class="error"></span>
        </label>
        <div>
            <button type="button" onclick="login()">Submit</button>
        </div>
        <div>
            <a href="#" onclick="loadForgetPsw()">Forget password</a>
        </div>
        <div>
            <p>Don't have an account?<span><a href="#" onclick="redirectRegistratin()">Signup here</a></span>
        </div>
        <div class="not-found-error-sect">
            <c:if test="${process eq 'error'}">
                <p class="not-found-error">User not found!!</p>
            </c:if>
        </div>
    </form>

