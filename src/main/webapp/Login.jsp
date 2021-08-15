<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <meta charset="ISO-8859-1">
        <title>Login</title>
        <SCRIPT type="text/javascript">
            window.history.forward();

            function noBack() {
                window.history.forward();
            }
        </SCRIPT>
    </head>
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
        <div class="">
            <div class="row text-center">
                <div class="col">
                    <nav class="py-3 nav-bar navbar-light bg-light text-primary" style="font-weight: bolder; box-shadow: 5px 5px 25px lightblue;">
                        <h3>SAL Solutions PVT.Ltd.</h3>
                    </nav>
                </div>
            </div>
        </div>
        <div class="my-5">
                <div class="row ">
                    <div class="one col-lg-7 col-md-9 mx-auto p-5" style="border-radius: 0px 40px 0px 40px;">
                        <ul class="nav nav-pills nav-tabs mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item mx-3" role="presentation">
                                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#UserLogin" type="button" role="tab" aria-controls="pills-home" aria-selected="true">User
								Login</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#AdminLogin" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Admin
								Login</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="UserLogin" role="tabpanel" aria-labelledby="pills-home-tab">
                             <form class="row g-3 needs-validation" novalidate action="UserLoginVerify" method="post">
                                <div class="mb-3 px-5 mt-5">
                                    <label for="email" class="form-label">Email address</label> <input type="email" class="form-control" id="useremail" name="useremail" placeholder="abc@gmail.com">
                                     <small class="invalid-feedback form-text"> Please enter valid email format. </small> <small class="valid-feedback form-text">
									valid email format </small>
                                </div>
                                <div class="mb-3 px-5">
                                    <label for="pass" class="form-label">Password</label> <input type="email" class="form-control" id="userpassword" name="userpassword" placeholder="*****">
                                    <div id="passHelp" class="form-text">Should have min length 5 with atleast one Uppercase, one lowercase and one digit.
                                    </div>
                                    <button type="submit" class="btn btn-primary mt-4 col-12">Login</button>
                                </div>
                                <div class="mb-3 px-5">
                                    <label class="form-text">Do u have an account?</label> <a class="mt-4" href="Register.jsp" style="text-decoration: none; cursor: pointer;">Register
									here...</a>
                                </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="AdminLogin" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <form class="row g-3 needs-validation" novalidate action="AdminLoginVerify">
                                <div class="mb-3 px-5 mt-5">
                                    <label for="email" class="form-label">Admin Id</label> <input type="email" class="form-control" id="adminemail" name="adminemail" placeholder="ABC"> <small class="valid-feedback form-text"> valid email format </small> <small class="invalid-feedback form-text"> Please enter
									correct userid. </small>
                                </div>
                                <div class="mb-3 px-5">
                                    <label for="pass" class="form-label">Password</label> <input type="email" class="form-control" id="adminpassword" name="adminpassword" placeholder="*****">

                                    <div id="passHelp" class="form-text">Should have min length 5 with atleast one Uppercase, one lowercase and one digit.
                                    </div>
                                    <button type="submit" class="btn btn-primary mt-4 col-12">Login</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </div>

        <!-- 	----------------------------bootstrap modal box for user login error----------------------------------- -->
        <div class="modal fade" id="modelConfirmed1" tabindex="-1" aria-labelledby="modelConfirmed1Label" aria-hidden="true">
            <div class="modal-dialog modal-sm  modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body" style="color: red;">NOT A VALID ID OR PASSWORD
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Ok</button>
                    </div>
                </div>
            </div>
        </div>

	<script type="text/javascript">
            $(document).ready(function($) {

                <%if (session.getAttribute("flag") != null) {
					int decision = (int) session.getAttribute("flag");
					if (decision == 1) {%>
                	$('#modelConfirmed1').modal('show');
                <%}
				session.removeAttribute("flag");
				}%>
				
                <%if (session.getAttribute("adminflag") != null) {
					int admindecision = (int) session.getAttribute("adminflag");
					if (admindecision == 1) {%>
                	$('#modelConfirmed1').modal('show');
                <%}
				session.removeAttribute("adminflag");
				}%>
				
            });
        </script>

	<!-- ---------------------------------------------------------------------------------------------------------------------- -->

    </body>
    <script>
        var useremail = document.getElementById("useremail");
        var adminemail = document.getElementById("adminemail");

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


        adminemail.addEventListener('keyup', () => {
            // console.log("key uped");
            let str = adminemail.value;
            let regx = /^([a-zA-Z0-9]){1,10}@gmail.com$/;
            if (regx.test(str)) {
                console.log('matched');
                adminemail.classList.remove('is-invalid');
                adminemail.classList.add('is-valid');
            } else {
                console.log('not matched');
                adminemail.classList.add('is-invalid');
                adminemail.classList.remove('is-valid');
            }
        })
    </script>

    </html>