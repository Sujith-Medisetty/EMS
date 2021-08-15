<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Register</title>
    <SCRIPT type="text/javascript">
        window.history.forward();

        function noBack() {
            window.history.forward();
        }
    </SCRIPT>
</head>
<style>
    .navbar-brand {
        position: absolute;
        left: 50%;
        transform: translateX(-50%);
        top: 10px;
    }
</style>
<style>
    .one {
        box-shadow: 5px 5px 25px lightgrey;
    }
    
    body,
    html {
        margin: 0px;
        padding: 0px;
    }
</style>

<body>
    <!-- -------------------------------------------spinner------------------------------------- -->


    <!-- -------------------------------------------------------------------------------- -->

    <div class="row pb-3">
        <div class="col">
            <div class="navbar fixed-top navbar-expand-lg navbar-light bg-light px-3 mb-5" style="box-shadow: 5px 5px 25px lightblue;">
                <a href="" class="navbar-brand">
                    <h3 class="text-primary">REGISTRATION</h3>
                </a>

                <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#mynav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="mynav">
                    <ul class="navbar-nav me-auto"></ul>
                    <form>
                        <a type="submit" class="d-block btn btn-primary mt-3 mt-lg-0" href="UserLogout">Login</a>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <div class="row g-3 needs-validation" novalidate>
        <div class="row">
            <div class="one col-lg-7 col-md-9 mx-auto p-5" style="border-radius: 0px 40px 0px 40px;">

                <div class="mb-3 px-5 mt-5">
                    <label for="username" class="form-label">Display Name</label> <input type="text" class="form-control" id="username" name="username" placeholder="Name" required> <small class="valid-feedback form-text"> Looks good! </small> <small class="invalid-feedback form-text"> Name should have 5 to
						15 charecters and should not contain special charecters. </small>
                </div>

                <div class="mb-3 px-5">
                    <label for="useremail" class="form-label">Email address</label> <input type="email" class="form-control" id="useremail" name="useremail" placeholder="abc@gmail.com" required> <small class="valid-feedback form-text"> Looks good! </small>                    <small class="invalid-feedback form-text"> Please enter correct
						useremail. </small>
                </div>
                <div class="mb-3 px-5">
                    <label for="userpassword" class="form-label">Password</label> <input type="password" class="form-control" id="userpassword" name="userpassword" placeholder="*****" required> <small class="valid-feedback form-text"> Looks good! </small>                    <small class="invalid-feedback form-text"> Please enter correct
						password. </small>
                    <div id="passHelp" class="form-text">Should have min length 5 with atleast one Uppercase, one lowercase and one digit.</div>
                </div>
                <div class="mb-3 px-5">
                    <label for="usermobile" class="form-label">Mobile Number</label> <input type="text" class="form-control" id="usermobile" name="usermobile" placeholder="Mobile number" required> <small class="valid-feedback form-text"> Looks good! </small>                    <small class="invalid-feedback form-text"> Must be a 10 digit
						number and sholu not start with 0. </small>
                    <div id="mobileHelp" class="form-text">Must be a 10 digit number and sholud not start with 0.</div>
                </div>
                <button type="submit" class="btn btn-primary mt-4 col-12" id="fetch">Register</button>

            </div>
        </div>
    </div>

    <!-- -----------------------------------model to see registration success --------------------------- -->

    <div class="modal fade " id="phonemodal">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <b class="modal-title" id="title">Status</b>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="p-3">
                        <b id="status"></b>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal" id="footer">Close</button>
                </div>
            </div>
        </div>
    </div>

</body>
<script>
    var useremail = document.getElementById("useremail");
    var userpassword = document.getElementById("userpassword");
    var usermobile = document.getElementById("usermobile");
    var username = document.getElementById("username");

    useremail.addEventListener('keyup', () => {
        // console.log("key uped");
        let str = useremail.value;
        let regx = /^([a-zA-Z0-9]){1,10}@gmail.com$/;
        if (regx.test(str)) {
            console.log('matched');
            useremail.classList.remove('is-invalid');
            useremail.classList.add('is-valid');
        } else {
            console.log('not matched');
            useremail.classList.add('is-invalid');
            useremail.classList.remove('is-valid');
        }
    })

    userpassword.addEventListener('keyup', () => {
        let str = userpassword.value;
        let regx = /^([a-zA-Z0-9]){5,10}$/;
        if (regx.test(str)) {
            userpassword.classList.remove('is-invalid');
            userpassword.classList.add('is-valid');
        } else {
            userpassword.classList.add('is-invalid');
            userpassword.classList.remove('is-valid');
        }
    })

    usermobile.addEventListener('keyup', () => {
        let str = usermobile.value;
        let regx = /^[1-9]{1}([0-9]){9}$/;
        if (regx.test(str)) {
            usermobile.classList.remove('is-invalid');
            usermobile.classList.add('is-valid');
        } else {
            usermobile.classList.add('is-invalid');
            usermobile.classList.remove('is-valid');
        }
    })

    username.addEventListener('keyup', () => {
        let str = username.value;
        let regx = /^[a-zA-Z]{5,15}$/;
        if (regx.test(str)) {
            username.classList.remove('is-invalid');
            username.classList.add('is-valid');
        } else {
            username.classList.add('is-invalid');
            username.classList.remove('is-valid');
        }
    })

    /* ---------------------------------------------------------------- */

    let fetchData = document.getElementById("fetch");

    fetchData.addEventListener("click", listen);

    function listen() {
        if (useremail.value == "" || userpassword.value == "" || usermobile.value == "" || username.value == "") {

            $("#status").empty();
            $("#status").append("Null values not accepted");
            $("#phonemodal").modal('show');

        } else {

            const xhr = new XMLHttpRequest();

            xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/RegisterServlet', true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            xhr.onprogress = function() {
                console.log("In Progress");
            }

            xhr.onload = function() {
                if (this.status == 200) {
                    console.log(this.responseText);
                    // fetchData.remove();
                    // document.getElementById("target").innerHTML = this.responseText;
                    $("#status").empty();
                    $("#status").append(this.responseText);
                    $("#phonemodal").modal('show');

                    useremail.value = "";
                    userpassword.value = "";
                    usermobile.value = "";
                    username.value = "";

                    useremail.classList.remove('is-valid');
                    useremail.classList.remove('is-invalid');
                    userpassword.classList.remove('is-valid');
                    userpassword.classList.remove('is-invalid');
                    usermobile.classList.remove('is-valid');
                    usermobile.classList.remove('is-invalid');
                    username.classList.remove('is-valid');
                    username.classList.remove('is-invalid');

                } else {
                    $("#status").empty();
                    $("#status").append("User already exist");
                    $("#phonemodal").modal('show');
                    console.log("some error occured");
                }
            }


            params = 'useremail=' + useremail.value + '&userpassword=' + userpassword.value + '&usermobile=' + usermobile.value + '&username=' + username.value;
            xhr.send(params);


        }

    }
</script>

</html>