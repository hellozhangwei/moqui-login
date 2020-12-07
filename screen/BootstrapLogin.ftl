<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <style type="text/css">
   /* set entire body that is webpage */
    .login-container{
      //background: #383a3d;
      padding-top: 25vh;
    }
    /* set form background colour*/
    .login-form{
      //background: #fff;
    }
    /* set padding and size of th form */
    .form-container{
      //border-radius: 5px;
      //padding: 30px;
    }

    .nav-tabs .nav-link {
      border-top: none;
      border-left: 1px solid transparent;
      border-right: 1px solid #dee2e6;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0;
      border-top-right-radius: 0;
    }

    .nav-tabs .nav-link.active {
      color: #495057;
      background-color: #fff;
      border-color: #dee2e6 #dee2e6 #007bff;
    }

    .card {
      border-bottom-left-radius: 0;
      border-bottom-right-radius: 0;
    }
  </style>
</head>

<body>
<!-- Login form creation starts-->
  <div class="container-fluid">
    <#if ec.web.savedMessages??>
      <#list ec.web.savedMessages as savedMessage>
        <div class="alert alert-success" role="alert">
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4>${savedMessage}</h4>
        </div>
      </#list>
    </#if>
    <#if ec.web.savedErrors??>
      <#list ec.web.savedErrors as savedError>
        <div class="alert alert-danger" role="alert">
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4>${savedError}</h4>
        </div>
      </#list>
    </#if>
    <#if ec.web.savedValidationErrors??>
      <#list ec.web.savedValidationErrors as savedValidationError>
        <div class="alert alert-danger" role="alert">
          <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4>${savedValidationError}</h4>
        </div>
      </#list>
    </#if>

    <section class="row justify-content-center login-container">
      <section class="col-12 col-sm-6 col-md-5">
        <div class="tab-content card pt-5 pl-5 pr-5" id="myTabContentJust">
          <div class="tab-pane fade show active" id="login-panel" role="tabpanel" aria-labelledby="home-tab-just">
            <form method="post" class="form-container login-form" action="${sri.buildUrl("login").url}">
              <div class="form-group">
                <h4 class="text-center font-weight-bold"> Login </h4>
                <label for="login_form_username">${ec.l10n.localize("Username")}</label>
                <input type="text" class="form-control" id="login_form_username" name="username" aria-describeby="usernameHelp" placeholder="${ec.l10n.localize("Username")}" required="required">
              </div>
              <div class="form-group">
                <label for="login_form_password">${ec.l10n.localize("Password")}</label>
                <input type="password" class="form-control" id="login_form_password" name="password" placeholder="${ec.l10n.localize("Password")}" required="required">
              </div>
              <button type="submit" class="btn btn-primary btn-block">${ec.l10n.localize("Sign in")}</button>
            </form>
            <script>$("#login_form_username").focus();</script>
          </div>
          <div class="tab-pane fade" id="reset-panel" role="tabpanel" aria-labelledby="profile-tab-just">
            <form method="post" action="${sri.buildUrl("resetPassword").url}" class="form-signin" id="reset_form">
              <div class="form-group">
                <h4 class="text-center font-weight-bold"> ${ec.l10n.localize("Enter your username to reset and email your password")} </h4>
                <label for="reset_form_username">${ec.l10n.localize("Username")}</label>
                <input type="text" class="form-control" id="reset_form_username" name="username" aria-describeby="usernameHelp" placeholder="${ec.l10n.localize("Username")}" required="required">
              </div>
              <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
              <button class="btn btn-lg btn-danger btn-block" type="submit">${ec.l10n.localize("Reset &amp; Email Password")}</button>
            </form>
          </div>
          <div class="tab-pane fade" id="change-panel" role="tabpanel" aria-labelledby="contact-tab-just">
            <form method="post" action="${sri.buildUrl("changePassword").url}" class="form-signin" id="change_form">
              <input type="hidden" name="moquiSessionToken" value="${ec.web.sessionToken}">
              <div class="form-group">
                <h4 class="text-center font-weight-bold"> ${ec.l10n.localize("Enter details to change your password")} </h4>
                <label for="change_form_username">${ec.l10n.localize("Username")}</label>
                <input type="text" id="change_form_username" name="username" value="${(ec.getWeb().getErrorParameters().get("username"))!""}" placeholder="${ec.l10n.localize("Username")}" required="required" class="form-control top">
              </div>
              <div class="form-group">
                <label for="change_form_old_password">${ec.l10n.localize("Old Password")}</label>
                <input type="password" id="change_form_old_password" name="oldPassword" placeholder="${ec.l10n.localize("Old Password")}" required="required" class="form-control middle">
              </div>
              <div class="form-group">
                <label for="change_form_new_password">${ec.l10n.localize("New Password")}</label>
                <input type="password" id="change_form_new_password" name="newPassword" placeholder="${ec.l10n.localize("New Password")}" required="required" class="form-control middle">
              </div>
              <div class="form-group">
                <label for="change_form_new_password_verify">${ec.l10n.localize("New Password Verify")}</label>
                <input type="password" id="change_form_new_password_verify" name="newPasswordVerify" placeholder="${ec.l10n.localize("New Password Verify")}" required="required" class="form-control bottom">
              </div>
              <button class="btn btn-lg btn-danger btn-block" type="submit">${ec.l10n.localize("Change Password")}</button>
            </form>
          </div>
        </div>
        <ul class="nav nav-tabs nav-justified md-tabs indigo" id="myTabJust" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="home-tab-just" data-toggle="tab" href="#login-panel" role="tab" aria-controls="login-panel" aria-selected="true">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="profile-tab-just" data-toggle="tab" href="#reset-panel" role="tab" aria-controls="reset-panel" aria-selected="false">Reset Password</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="contact-tab-just" data-toggle="tab" href="#change-panel" role="tab" aria-controls="change-panel" aria-selected="false">Change Password</a>
          </li>
        </ul>
      </section>
    </section>
  </div>
<!-- Login form creation ends -->
</body>
</html>