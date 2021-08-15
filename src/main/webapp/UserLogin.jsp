<%@page import="org.hibernate.internal.build.AllowSysOut"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <!DOCTYPE html>
        <html>

        <head>
            <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
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
                            <h3 class="text-primary">USER-DASHBOARD</h3>
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
                                <a type="submit" class="d-block btn btn-primary mt-3 mt-lg-0" href="UserLogout">Logout</a>
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
          							<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Apply</button>
       						    </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Edit Profile</button>
                            </li>
                        </ul>

                        <div class="tab-content" id="pills-tabContent">
 <!-- -------------------------------------------------------Apply tab------------------------------------------------------------------------- -->
                                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
         
                     <div class="p-5" >
         			   <b class="text-primary">&nbsp;Status&nbsp;:&nbsp;</b><span id="apply-status"></span><br><br>
                      <h4>Job Description</h4>
                      <p>We are looking for a Full Stack Developer to produce scalable software solutions. You’ll be part of a cross-functional team that’s responsible for the full software development life cycle, from conception to deployment.<br><br>

                        As a Full Stack Developer, you should be comfortable around both front-end and back-end coding languages, development frameworks and third-party libraries. You should also be a team player with a knack for visual design and utility.</p>
                    <h4>Responsibilities</h4>
                    <p> <b>->&nbsp;&nbsp;</b>Work with development teams and product managers to ideate software solutions.<br>
                        <b>->&nbsp;&nbsp;</b>Design client-side and server-side architecture<br>
                        <b>->&nbsp;&nbsp;</b>Build the front-end of applications through appealing visual design<br>
                        <b>->&nbsp;&nbsp;</b>Develop and manage well-functioning databases and applications<br>
                        <b>->&nbsp;&nbsp;</b>Write effective APIs<br>
                        <b>->&nbsp;&nbsp;</b>Test software to ensure responsiveness and efficiency<br>
                        <b>->&nbsp;&nbsp;</b>Troubleshoot, debug and upgrade software<br>
                        <b>->&nbsp;&nbsp;</b>Create security and data protection settings<br>
                        <b>->&nbsp;&nbsp;</b>Build features and applications with a mobile responsive design<br>
                        <b>->&nbsp;&nbsp;</b>Write technical documentation<br>
                        <b>->&nbsp;&nbsp;</b>Work with data scientists and analysts to improve software</p>
                        <h4>Skills Required</h4>
                    <div><b>->&nbsp;&nbsp;</b> HTML/CSS<br>
                        <b>->&nbsp;&nbsp;</b> JavaScript<br>
                        <b>->&nbsp;&nbsp;</b> Git and GitHub <br>
                        <b>->&nbsp;&nbsp;</b> Backend languages<br>
                        <b>->&nbsp;&nbsp;</b> Web architecture<br>
                        <b>->&nbsp;&nbsp;</b>HTTP and REST<br>
                        <b>->&nbsp;&nbsp;</b>Database storage<br>
                        <b>->&nbsp;&nbsp;</b>Basic design skills<br>
                        <b>->&nbsp;&nbsp;</b>NPM<br>
                        <b>->&nbsp;&nbsp;</b> Soft skills</div>
                        <button type="button" class="btn btn-outline-primary w-100 mt-5 mb-5" onclick="applicationStatus()">Apply</button>
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
	 String email=(String)session.getAttribute("useremail");
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
                
                /* -------	 ajax part-------- ajax call to get job application status based on mail id  */
                 const xmlhr = new XMLHttpRequest();

				    xmlhr.open('POST', 'http://localhost:8080/Maven-Hibernate/UserApplyJobStatus', true);
				    xmlhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				
				
				
				    xmlhr.onprogress = function() {
				        console.log("In Progress");
				    }
				
				    xmlhr.onreadystatechange = function() {
				        console.log(this.readyState); // 0 to 4
				    }
				
				    xmlhr.onload = function() {
				        if (this.status == 200) {
				            console.log(this.responseText);
				            // fetchData.remove();
				            // document.getElementById("target").innerHTML = this.responseText;
				            $("#apply-status").empty();
				            $("#apply-status").append(this.responseText);
				        } else {
				            $("#apply-status").empty();
				            $("#apply-status").append("some error occued...");
				        }
				    }
				
				
				    params =  'email=' + '<%=email%>';
				    xmlhr.send(params);

                /* -------	 ajax part-------- ajax call to get user data based on mail id  */

                const xhr = new XMLHttpRequest();

                xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/OnInitUserDetails', true);
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
                        var name = JSON.parse(this.responseText)["username"] + "";
                        var email = JSON.parse(this.responseText)["useremail"] + "";
                        var password = JSON.parse(this.responseText)["userpassword"] + "";
                        var mobile = JSON.parse(this.responseText)["usermobile"] + "";

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


                params = 'useremail=' + '<%=email%>';
                xhr.send(params);
                /* ----------------------------- */

            }


            /*  ------------------------------js code for phone modal number update code------------------ */

            var usermobile1 = document.getElementById("number1");
            var usermobile2 = document.getElementById("number2");



            function phonemodalfunc() {
                console.log("entered");
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (usermobile1.value == "" || usermobile1.value == "" || usermobile1.value != usermobile2.value || !regx.test(usermobile1.value) || !regx.test(usermobile2.value)) {
                    console.log("here");
                    $("#phonemodal-global-message").append("should not be empty, should have 10 digits and both the fields should match");
                    $("#phonemodal").modal('show');
                } else {
                    $("#phonemodal-global-message").empty();
                    console.log(usermobile1.value);
                    console.log(usermobile2.value);

                    var store = usermobile1.value;


                    //ajax code
                    //-----------------------------------------------
                    const xhr = new XMLHttpRequest();

                    xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/UserUpdatePhoneNumber', true);
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


                    params = 'number=' + usermobile1.value + '&email=<%=email%>';
                    xhr.send(params);

                    //------------------------------------------------


                    usermobile2.value = "";
                    usermobile1.value = "";
                    usermobile1.classList.remove('is-valid');
                    usermobile1.classList.remove('is-invalid');
                    usermobile2.classList.remove('is-valid');
                    usermobile2.classList.remove('is-invalid');
                    $("#phonemodal").modal('hide');

                }
            }

            function phonemodalclearDetails() {
                $("#phonemodal-global-message").empty();
                usermobile2.value = "";
                usermobile1.value = "";
                usermobile1.classList.remove('is-valid');
                usermobile1.classList.remove('is-invalid');
                usermobile2.classList.remove('is-valid');
                usermobile2.classList.remove('is-invalid');
                $("#phonemodal").modal('hide');
            }


            usermobile1.addEventListener('keyup', () => {
                let str = usermobile1.value;
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (regx.test(str)) {
                    usermobile1.classList.remove('is-invalid');
                    usermobile1.classList.add('is-valid');
                } else {
                    usermobile1.classList.add('is-invalid');
                    usermobile1.classList.remove('is-valid');
                    $("#phonemodal").modal('show');
                }
            })

            usermobile2.addEventListener('keyup', () => {
                let str = usermobile2.value;
                let regx = /^[1-9]{1}([0-9]){9}$/;
                if (regx.test(str)) {
                    usermobile2.classList.remove('is-invalid');
                    usermobile2.classList.add('is-valid');
                } else {
                    usermobile2.classList.add('is-invalid');
                    usermobile2.classList.remove('is-valid');
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

                    xhr.open('POST', 'http://localhost:8080/Maven-Hibernate/UserUpdatePassword', true);
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

  /* -----------------------------------to know to status(applied or already applied) of application on click of apply button------------------------------------------------ */
            
            function applicationStatus(){
            	
				 const xmlhr = new XMLHttpRequest();
					
				 xmlhr.open('POST', 'http://localhost:8080/Maven-Hibernate/UserApplyJob', true);
				 xmlhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				
				
				
				 xmlhr.onprogress = function() {
				        console.log("In Progress");
				    }
				
				 xmlhr.onreadystatechange = function() {
				        console.log(this.readyState); // 0 to 4
				    }
				
				 xmlhr.onload = function() {
				        if (this.status == 200) {
				            console.log(this.responseText);
				            // fetchData.remove();
				            // document.getElementById("target").innerHTML = this.responseText;
				            $("#status").empty();
				            $("#status").append(this.responseText);
				            AfterLoaded();
				            $("#userupdatemodel").modal('show');
				        } else {
				            $("#status").empty();
				            $("#status").append("Mail id does not exist");
				            console.log("some error occured");
				        }
				    }
				
				
				    params =  'email=' + '<%=email%>';
				 xmlhr.send(params);
            	
            }
            
            /* --------------------------------------------------------------------------------------------------------- */
            
            
        </script>

        </html>