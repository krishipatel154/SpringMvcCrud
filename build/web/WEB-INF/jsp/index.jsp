<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <script src="js/ajax.js"></script>
        <style>
            *{
                padding: 0;
                margin: 0;
                box-sizing: border-box;
            }
            /* NAVIGATION BAR*/ 
            nav{
                background-color: black;
                width: 100%;
                height: 100px;
            }
            .navbar{
                width: 100%;
                height: 100%;
                display: flex;
                justify-content: space-around;
                align-items: center;
            }
            .navbar-right{
                display: flex;
                justify-content: space-around;
                align-items: center;
                gap: 30px;
            }
            .navbar-right li{
                width: 100px;
                height: 50px;
                background-color: white;
                border-radius: 10px;
                text-align: center;
                padding: 10px;
            }
            .navbar-right li a{
                text-align: center;
                color: black;
                text-decoration: none;
                font-family: cursive;
                font-weight: bold;
            }
            
            /*FORM*/
            .container{
                margin: auto;
                width: 100%;
                height: 500px;
            }
            .container h1{
                font-family: cursive;
                font-weight: bold;
                margin: 10px;
                text-align: center;
                text-transform: uppercase;
            }
            form{
                width: 100%;
                margin: auto;
                display: flex;
                flex-direction: column;
            }
            form div{
                width: 60%;
                margin: 10px auto;
                text-align: center;
            }
            form button{
                width: 100px;
                height: 30px;
            }

            body {
                height: 100vh;
                display: grid;
                font-family: Roboto;
                -webkit-text-size-adjust: 100%;
                -webkit-font-smoothing: antialiased;
            }
            .inp {
                position: relative;
                margin: 10px auto;
                width: 100%;
                max-width: 500px;
                border-radius: 3px;
                overflow: hidden;
            }
            .inp .label {
                position: absolute;
                top: 20px;
                left: 12px;
                font-size: 16px;
                color: rgba(0, 0, 0, 0.5);
                font-weight: 500;
                transform-origin: 0 0;
                transform: translate3d(0, 0, 0);
                transition: all 0.2s ease;
                pointer-events: none;
            }
            .inp .focus-bg {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.05);
                z-index: -1;
                transform: scaleX(0);
                transform-origin: left;
            }
            .inp input {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                width: 100%;
                border: 0;
                font-family: inherit;
                padding: 16px 12px 0 12px;
                height: 46px;
                font-size: 16px;
                font-weight: 400;
                background: rgba(0, 0, 0, 0.02);
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.3);
                color: #000;
                transition: all 0.15s ease;
            }
            .inp input:hover {
                background: rgba(0, 0, 0, 0.04);
                box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.5);
            }
            .inp input:not(:-moz-placeholder-shown) + .label {
                color: rgba(0, 0, 0, 0.5);
                transform: translate3d(0, -12px, 0) scale(0.75);
            }
            .inp input:not(:-ms-input-placeholder) + .label {
                color: rgba(0, 0, 0, 0.5);
                transform: translate3d(0, -12px, 0) scale(0.75);
            }
            .inp input:not(:placeholder-shown) + .label {
                color: rgba(0, 0, 0, 0.5);
                transform: translate3d(0, -12px, 0) scale(0.75);
            }
            .inp input:focus {
                background: rgba(0, 0, 0, 0.05);
                outline: none;
                box-shadow: inset 0 -2px 0 #0077FF;
            }
            .inp input:focus + .label {
                color: black;
                transform: translate3d(0, -12px, 0) scale(0.75);
            }
            .inp input:focus + .label + .focus-bg {
                transform: scaleX(1);
                transition: all 0.1s ease;
            }
            
            /*ERROR MESSAGE*/
            .error{
                color: red;
            }
            .not-found-error-sect{
                margin: 10px auto;
                text-align: center;
            }
            .not-found-error{
                color: red;
            }
        </style>
    </head>
    <body>
    <nav>
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">WebSiteName</a>
            </div>
            <ul class="navbar-right">
                <li><a href="#" onclick="loadSignUpPage()"> Sign Up</a></li>
                <li><a href="#" onclick="loadSignInPage()"></span> Login</a></li>
            </ul>
        </div>
    </nav>
    <div class="load" id="load"></div>
</body>
</html>
