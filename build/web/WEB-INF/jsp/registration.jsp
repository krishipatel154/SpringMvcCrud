<div class="container">
    <h1>Registration Form</h1>
    <form class="needs-validation" name="myForm" method="post">
        <label for="inp" class="inp">
            <input type="text" id="fname" placeholder="&nbsp;">
            <span class="label">First Name</span>
            <span class="focus-bg"></span>
            <span id="fnameError" class="error"></span> <!-- Error span for first name -->

        </label>

        <label for="inp" class="inp">
            <input type="text" id="lname" placeholder="&nbsp;">
            <span class="label">Last Name</span>
            <span class="focus-bg"></span>
            <span id="lnameError" class="error"></span> <!-- Error span for last name -->

        </label>

        <label for="inp" class="inp">
            <input type="text" id="uname" placeholder="&nbsp;">
            <span class="label">User Name</span>
            <span class="focus-bg"></span>
            <span id="unameError" class="error"></span> <!-- Error span for user name -->

        </label>

        <label for="inp" class="inp">
            <input type="email" id="email" placeholder="&nbsp;">
            <span class="label">Email</span>
            <span class="focus-bg"></span>
            <span id="emailError" class="error"></span> <!-- Error span for email -->

        </label>

        <label for="inp" class="inp">
            <input type="password" id="psw" placeholder="&nbsp;">
            <span class="label">Password</span>
            <span class="focus-bg"></span>
            <span id="pswError" class="error"></span> <!-- Error span for password -->

        </label>

        <label for="inp" class="inp">
            <input type="password" id="repetePsw" placeholder="&nbsp;">
            <span class="label">Repete Password</span>
            <span class="focus-bg"></span>
            <span id="repetePswError" class="error"></span> <!-- Error span for repeat password -->

        </label>
        <div>
            <button type="button" onclick="insertData()">Submit</button>
        </div>
        <div>
            <p>Already have an account?<span><a href="#" onclick="redirectLogin()">login</a></span></p>
        </div>
    </form>
</div>


