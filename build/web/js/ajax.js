function ajaxCall(url, method, destination, data, syncFlag) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            document.getElementById(destination).innerHTML = this.responseText;
        }
    };
    xhttp.open(method, url, syncFlag);
    xhttp.setRequestHeader("content-type", "application/x-www-form-urlencoded");
    xhttp.send(data);
}
function idCall(id) {
    return document.getElementById(id).value;
}

function loadSignUpPage() {
    ajaxCall("index.htm?loadPage=loadSignUpPage", "GET", "load", "", true);
}

function insertData() {
    // Retrieve form input values
    let fname = idCall("fname");
    let lname = idCall("lname");
    let uname = idCall("uname");
    let email = idCall("email");
    let psw = idCall("psw");
    let repetePsw = idCall("repetePsw");

    document.getElementById('fnameError').innerHTML = "";
    document.getElementById('lnameError').innerHTML = "";
    document.getElementById('unameError').innerHTML = "";
    document.getElementById('emailError').innerHTML = "";
    document.getElementById('pswError').innerHTML = "";
    document.getElementById('repetePswError').innerHTML = "";
    let valid = true;

    if (fname === "") {
        document.getElementById('fnameError').innerHTML = "First Name is required.";
        valid = false;
    }
    if (lname === "") {
        document.getElementById('lnameError').innerHTML = "Last Name is required.";
        valid = false;
    }
    if (uname === "") {
        document.getElementById('unameError').innerHTML = "User Name is required.";
        valid = false;
    }
    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {
        document.getElementById('emailError').innerHTML = "Invalid email format.";
        valid = false;
    }
    if (psw === "") {
        document.getElementById('pswError').innerHTML = "Password cannot be empty.";
        valid = false;
    }
    if (psw !== repetePsw) {
        document.getElementById('repetePswError').innerHTML = "Passwords do not match.";
        valid = false;
    }
    if (!valid) {
        return false;
    }
    let params = "fname=" + fname + "&lname=" + lname + "&uname=" + uname + "&email=" + email + "&psw=" + psw + "&repetePsw=" + repetePsw;
    ajaxCall("index.htm?loadPage=loadInsertData", "POST", "load", params, false);
}


function loadSignInPage() {
    ajaxCall("index.htm?loadPage=loadSignInPage", "GET", "load", "", true);
}
function login() {
    let email = idCall("email");
    let psw = idCall("psw");
    let repetePsw = idCall("repetePsw");
    document.getElementById('emailError').innerHTML = "";
    document.getElementById('pswError').innerHTML = "";
    document.getElementById('repetePswError').innerHTML = "";
    let valid = true;

    const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (!email.match(emailPattern)) {
        document.getElementById('emailError').innerHTML = "Invalid email format";
        valid = false;
    }
    if (psw === "") {
        document.getElementById('pswError').innerHTML = "Password cannot be empty";
        valid = false;
    }
    if (psw !== repetePsw) {
        document.getElementById('repetePswError').innerHTML = "Passwords do not match";
        valid = false;
    }
    if (!valid) {
        return false;
    }
    let params = "&email=" + email + "&psw=" + psw + "&repetePsw=" + repetePsw;
    ajaxCall("index.htm?loadPage=loadLoginPage", "POST", "load", params, false);
}
