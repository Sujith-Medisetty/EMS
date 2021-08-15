<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
	<title>Insert title here</title>
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
<body onload="AfterLoaded()">

            <!-- -----------------------------------------------navbar---------------------------------------------------------------------- -->

            <div class="row pb-3">
                <div class="col mb-5">
                    <div class="navbar fixed-top navbar-expand-lg navbar-light bg-light px-3 mb-5" style="box-shadow: 5px 5px 25px lightblue;">
                        <a href="" class="navbar-brand">
                            <h3 class="text-primary">ADMIN-DASHBOARD</h3>
                        </a>

                        <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#mynav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                        <div class="collapse navbar-collapse" id="mynav">
                            <ul class="navbar-nav me-auto">
                                <table class="nav-item d-none d-lg-block" style="text-align:center;vertical-align : middle;">
                                    <tr class="text-primary">
                                        <td scope="col" rowspan="2">
                                            <div class="bg-primary" style="color:white;width:50px;height:50px; padding-top:6px;border-radius:35px;vertical-align : middle;text-align:center;font-size: 25px;font-weight: bolder;" id="nav-first-letter"></div>
                                        </td>
                                        <td></td>
                                        <td style="font-weight: bolder;" id="nav-email"></td>
                                    </tr>
                                </table>
                            </ul>
                            <form>
                                <a type="submit" class="d-block btn btn-primary mt-3 mt-lg-0" href="AdminLogout">Logout</a>
                            </form>
                        </div>

                    </div>
                </div>
            </div>


            <!-- -----------------------------------------------tablist---------------------------------------------------------------------- -->


            <div class="mt-5">
                <div class="row ">
                    <div class="one col-lg-7 col-md-9 mx-auto p-5" style="border-radius: 0px 40px 0px 40px;">
                        <ul class="nav nav-pills nav-tabs mb-3" id="pills-tab" role="tablist">
                               <li class="nav-item mx-3" role="presentation">
          							<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">View All Users</button>
       						    </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Edit Profile</button>
                            </li>
                        </ul>
                        
                         <div class="tab-content" id="pills-tabContent">
                   <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
         
                     <div class="p-5" >
         			
						<div style="height:300px;overflow: auto;">
						    <table class="table" id="table">
						        <thead>
						            <tr>
						                <th scope="col">Name</th>
						                <th scope="col">Mail Id</th>
						                <th scope="col">Mobile</th>
						                <th scope="col">Password</th>
						                <th scope="col">Status</th>
						            </tr>
						        </thead>
						    </table>
						</div>
                  </div>
        </div>
<!-- ---------------------------------------------------edit profile tab---------------------------------------------------------------- -->
                            <div class="tab-pane fade show" id="pills-profile" role="tabpanel" aria-labelledby="pills-home-tab">

                                <table class="table table-striped table-bordered align-middle p-5">
                                    <thead>
                                        <tr>
                                            <th scope="col">Identity</th>
                                            <th scope="col">Details</th>
                                            <th scope="col">Update</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">Name</th>
                                            <td id="profile-name"></td>
                                            <td>---</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Email</th>
                                            <td id="profile-email"></td>
                                            <td>---</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Password</th>
                                            <td id="profile-password"></td>
                                            <td><button class="btn btn-outline-primary btn-sm" data-bs-toggle="modal" data-bs-target="#passwordmodal">update</button></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Phone Number</th>
                                            <td id="profile-mobile"></td>
                                            <td><button class="btn btn-outline-primary btn-sm" type="button" data-bs-toggle="modal" data-bs-target="#phonemodal">update</button></td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                         </div>
                  </div>
                </div>
            </div>
            
         <!-- -------------------------------------------------phone modal number update code------------------------------------------------------------------------------ -->
            <div class="modal fade" id="phonemodal" data-bs-backdrop="static">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="title">Update Phone number</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="phonemodalclearDetails()"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <small class="form-text text-danger" id="phonemodal-global-message"></small>
                            </div>
                            <div class="mb-3">
                                <label for="number1" class="form-label">New Phone Number</label>
                                <input type="text" class="form-control" id="number1">
                                <small class="valid-feedback form-text">
                        Looks good!
                      </small>
                                <small class="invalid-feedback form-text">
                        Must be a 10 digit number and sholu not start with 0.
                      </small>
                                <div id="mobileHelp" class="form-text">Must be a 10 digit number and sholud not start with 0.</div>
                            </div>
                            <div class="mb-3">
                                <label for="number2" class="form-label">Confirm Phone Number</label>
                                <input type="text" class="form-control" id="number2">
                                <small class="valid-feedback form-text">
                        Looks good!
                      </small>
                                <small class="invalid-feedback form-text">
                        Must be a 10 digit number and sholu not start with 0.
                      </small>
                                <div id="mobileHelp" class="form-text">Must be a 10 digit number and sholud not start with 0.</div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="phonemodalclearDetails()">Close</button>
                            <button type="button" class="btn btn-primary" onclick="phonemodalfunc()">Send message</button>
                        </div>
                    </div>
                </div>
            </div>


            <!-- -------------------------------------------------password modal number update code------------------------------------------------------------------------------ -->
            <div class="modal fade" id="passwordmodal" data-bs-backdrop="static">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="title">Update Password</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="passwordmodalclearDetails()"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <small class="form-text text-danger" id="password-global-message"></small>
                            </div>
                            <div class="mb-3">
                                <label for="password1" class="form-label">New Password</label>
                                <input type="text" class="form-control" id="password1">
                                <small class="valid-feedback form-text">
                        Looks good!
                      </small>
                                <small class="invalid-feedback form-text">
                        Must be a 10 digit number and sholu not start with 0.
                      </small>
                                <div id="passwordHelp" class="form-text">Should have min length 5 with atleast one Uppercase, one lowercase and one digit.</div>
                            </div>
                            <div class="mb-3">
                                <label for="password2" class="form-label">Confirm Password</label>
                                <input type="text" class="form-control" id="password2">
                                <small class="valid-feedback form-text">
                        Looks good!
                      </small>
                                <small class="invalid-feedback form-text">
                        Must be a 10 digit number and sholu not start with 0.
                      </small>
                                <div id="passwordHelp" class="form-text">Should have min length 5 with atleast one Uppercase, one lowercase and one digit.</div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="passwordmodalclearDetails()">Close</button>
                            <button type="button" class="btn btn-primary" onclick="passwordmodalfunc()">Send message</button>
                        </div>
                    </div>
                </div>
            </div>

 <!-- ---------------------------------------------------------modal to be displayed after failure or success---------------------------------------------------------------------- -->
   
   
            <div class="modal fade " id="userupdatemodel">
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
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            
            
  <!--  -------------------------------------------------------------------------------------------------- -->
                  

</body>
<script type="text/javascript">
            <%
	 String email=(String)session.getAttribute("adminemail");
	 System.out.println("in jsp "+email+"is u r mail id");
	 %>

            <!-- ------------------------------------------------------js function to laod user details ------------------------------------------------------------------------- -->

            function AfterLoaded() {
                /* make ajax call when page got loaded to have the refreshed data */
                <%System.out.println("after is "+email);%>

                $("#nav-first-letter").empty();
                $("#nav-first-letter").append("<%=email.toUpperCase().charAt(0) %>");
                $("#nav-email").empty();
                $("#nav-email").append("<%=email%>");
                
                /* -------	 ajax part-------- ajax call to get user data based on mail id  */

                const xhr = new XMLHttpRequest();

                xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/OnInitAdminDetails', true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");



                xhr.onprogress = function() {
                    console.log("In Progress");
                }

                xhr.onreadystatechange = function() {
                    console.log(this.readyState); // 0 to 4
                }

                xhr.onload = function() {
                    if (this.status == 200) {
                        console.log(this.responseText);
                        // fetchData.remove();
                        // document.getElementById("target").innerHTML = this.responseText;
                        var name = JSON.parse(this.responseText)["adminname"] + "";
                        var email = JSON.parse(this.responseText)["adminemail"] + "";
                        var password = JSON.parse(this.responseText)["adminpassword"] + "";
                        var mobile = JSON.parse(this.responseText)["adminmobile"] + "";

                        $("#profile-name").empty();
                        $("#profile-name").append(name);
                        $("#profile-email").empty()
                        $("#profile-email").append(email);
                        $("#profile-password").empty()
                        $("#profile-password").append(password);
                        $("#profile-mobile").empty()
                        $("#profile-mobile").append(mobile);
                        console.log(name);
                        console.log(email);
                        console.log(password);
                        console.log(mobile);
                    } else {
                        console.log("some error occured");
                    }
                }


                params = 'adminemail=' + '<%=email%>';
                xhr.send(params);
                /* --------------------------------- */
            }
            
            /*  ------------------------------js code for phone modal number update code------------------ */

            var adminmobile1 = document.getElementById("number1");
            var adminmobile2 = document.getElementById("number2");



            function phonemodalfunc() {
                console.log("entered");
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (adminmobile1.value == "" || adminmobile1.value == "" || adminmobile1.value != adminmobile2.value || !regx.test(adminmobile1.value) || !regx.test(adminmobile2.value)) {
                    console.log("here");
                    $("#phonemodal-global-message").append("should not be empty, should have 10 digits and both the fields should match");
                    $("#phonemodal").modal('show');
                } else {
                    $("#phonemodal-global-message").empty();
                    console.log(adminmobile1.value);
                    console.log(adminmobile2.value);

                    var store = adminmobile1.value;


                    //ajax code
                    //-----------------------------------------------
                    const xhr = new XMLHttpRequest();

                    xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/AdminUpdatePhoneNumber', true);
                    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

                    xhr.onload = function() {
                        if (this.status == 200) {
                            console.log(this.responseText);
                            AfterLoaded();

                            $("#status").empty();
                            $("#status").append(this.responseText);
                            $("#userupdatemodel").modal('show');
                        } else {
                            console.log("some error occured");
                        }
                    }


                    params = 'number=' + adminmobile1.value + '&email=<%=email%>';
                    xhr.send(params);

                    //------------------------------------------------


                    adminmobile2.value = "";
                    adminmobile1.value = "";
                    adminmobile1.classList.remove('is-valid');
                    adminmobile1.classList.remove('is-invalid');
                    adminmobile2.classList.remove('is-valid');
                    adminmobile2.classList.remove('is-invalid');
                    $("#phonemodal").modal('hide');

                }
            }

            function phonemodalclearDetails() {
                $("#phonemodal-global-message").empty();
                adminmobile2.value = "";
                adminmobile1.value = "";
                adminmobile1.classList.remove('is-valid');
                adminmobile1.classList.remove('is-invalid');
                adminmobile2.classList.remove('is-valid');
                adminmobile2.classList.remove('is-invalid');
                $("#phonemodal").modal('hide');
            }


            adminmobile1.addEventListener('keyup', () => {
                let str = adminmobile1.value;
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (regx.test(str)) {
                    adminmobile1.classList.remove('is-invalid');
                    adminmobile1.classList.add('is-valid');
                } else {
                    adminmobile1.classList.add('is-invalid');
                    adminmobile1.classList.remove('is-valid');
                    $("#phonemodal").modal('show');
                }
            })

            adminmobile2.addEventListener('keyup', () => {
                let str = adminmobile2.value;
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (regx.test(str)) {
                    adminmobile2.classList.remove('is-invalid');
                    adminmobile2.classList.add('is-valid');
                } else {
                    adminmobile2.classList.add('is-invalid');
                    adminmobile2.classList.remove('is-valid');
                    $("#phonemodal").modal('show');
                }
            })
            
            
                         /*  ------------------------------js code for password modal number update code------------------ */

             var password1 = document.getElementById("password1");
            var password2 = document.getElementById("password2");

            function passwordmodalfunc() {
                console.log("entered");
                let regx = /^([a-zA-Z0-9]){5,10}$/;
                if (password1.value == "" || password1.value == "" || password1.value != password2.value || !regx.test(password1.value) || !regx.test(password2.value)) {
                    console.log("here");
                    $("#password-global-message").append("should not be empty, should match both password entered in fields");
                    $("#passwordmodal").modal('show');
                } else {
                    $("#password-global-message").empty();
                    console.log(password1.value);
                    console.log(password2.value);

                    //ajax code
                    //-----------------------------------------------
                    const xhr = new XMLHttpRequest();

                    xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/AdminUpdatePassword', true);
                    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

                    xhr.onload = function() {
                        if (this.status == 200) {
                            console.log(this.responseText);
                            AfterLoaded();

                            $("#status").empty();
                            $("#status").append(this.responseText);
                            $("#userupdatemodel").modal('show');
                        } else {
                            $("#status").empty();
                            $("#status").append("update failed");
                            $("#userupdatemodel").modal('show');
                            console.log("some error occured");
                        }
                    }


                    params = 'password=' + password1.value + '&email=<%=email%>';
                    xhr.send(params);

                    //------------------------------------------------
                    password2.value = "";
                    password1.value = "";
                    password1.classList.remove('is-valid');
                    password1.classList.remove('is-invalid');
                    password2.classList.remove('is-valid');
                    password2.classList.remove('is-invalid');
                    $("#passwordmodal").modal('hide');

                }
            }

            function passwordmodalclearDetails() {
                $("#password-global-message").empty();
                password2.value = "";
                password1.value = "";
                password1.classList.remove('is-valid');
                password1.classList.remove('is-invalid');
                password2.classList.remove('is-valid');
                password2.classList.remove('is-invalid');
                $("#passwordmodal").modal('hide');
            }


            password1.addEventListener('keyup', () => {
                let str = password1.value;
                let regx = /^([a-zA-Z0-9]){5,10}$/;
                if (regx.test(str)) {
                    password1.classList.remove('is-invalid');
                    password1.classList.add('is-valid');
                } else {
                    password1.classList.add('is-invalid');
                    password1.classList.remove('is-valid');
                    $("#passwordmodal").modal('show');
                }
            })

            password2.addEventListener('keyup', () => {
                let str = password2.value;
                let regx = /^([a-zA-Z0-9]){5,10}$/;
                if (regx.test(str)) {
                    password2.classList.remove('is-invalid');
                    password2.classList.add('is-valid');
                } else {
                    password2.classList.add('is-invalid');
                    password2.classList.remove('is-valid');
                    $("#passwordmodal").modal('show');
                }
            })
            
</script>
    <script>

            const xmlhr = new XMLHttpRequest();

            xmlhr.open('POST', 'http://localhost:8080/Maven-Hibernate/ViewAllUsers', true);
            xmlhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");



            xmlhr.onprogress = function() {
                console.log("In Progress");
            }

            xmlhr.onreadystatechange = function() {
                console.log(this.readyState); // 0 to 4
            }

            xmlhr.onload = function() {
                if (this.status == 200) {
                    // fetchData.remove();
                    // document.getElementById("target").innerHTML = this.responseText;
                    var data = JSON.parse(this.responseText);
                    console.log(data);
                    // $("#status").empty();
                    // $("#status").append(data);

                    for (var i in data) {
                        $("#table").append("<tr><th scope='row' class='p-3'>" + data[i][0] + "</th><td class='p-3'>" + data[i][1] + "</td><td class='p-3'>" + data[i][2] + "</td><td class='p-3'>" + data[i][3] + "</td><td class='p-3'>" + data[i][4] + "</td></tr>");
                        console.log(data[i][0] + " " + data[i][1] + " " + data[i][2] + " " + data[i][3] + " " + data[i][4]);
                    }
                    $("#table").addClass("table-striped table-bordered align-middle");


                    // $("#phonemodal").modal('show');
                } else {
                    // $("#status").empty();
                    // $("#status").append("Mail id does not exist");
                    console.log("some error occured");
                }
            }


            // params = 'adminemail=sujith@gmail.com';
            xmlhr.send();

    </script>
</html>