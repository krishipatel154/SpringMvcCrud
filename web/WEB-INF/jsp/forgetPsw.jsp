<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="js/ajax.js"></script>
<div class="container">
    <h1>Forget Password</h1>
    <form action="">
        <label for="inp" class="inp">
            <input type="email" id="email" placeholder="&nbsp;">
            <span class="label">Email</span>
            <span class="focus-bg"></span>
            <span id="emailError" class="error"></span>
        </label>

        <label for="inp" class="inp">
            <input type="password" id="oldPsw" placeholder="&nbsp;">
            <span class="label">Old Password</span>
            <span class="focus-bg"></span>
            <span id="oldPswError" class="error"></span>
        </label>

        <label for="inp" class="inp">
            <input type="password" id="newPsw" placeholder="&nbsp;">
            <span class="label">New Password</span>
            <span class="focus-bg"></span>
            <span id="newPswError" class="error"></span>
        </label>

        <label for="inp" class="inp">
            <input type="password" id="repetePsw" placeholder="&nbsp;">
            <span class="label">New Password</span>
            <span class="focus-bg"></span>
            <span id="repetePswError" class="error"></span>
        </label>
        <div>
            <button type="button" onclick="forgetPsw()">Change</button>
        </div>
        <div>
            <c:if test="${process eq 'passwordNotChanged'}">
                <p>User not Found!!</p>
            </c:if>

            <c:if test="${process eq 'passwordChanged'}">
                <p>Password changed successfully!!</p>
            </c:if>
        </div>
    </form>

</div>
