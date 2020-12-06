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
          <div class="tab-pane fade show active" id="home-just" role="tabpanel" aria-labelledby="home-tab-just">
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
          <div class="tab-pane fade" id="profile-just" role="tabpanel" aria-labelledby="profile-tab-just">
            <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
              labore velit, blog sartorial PBR leggings next level wes anderson rtisan four loko farm-to-table craft
              beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad
              vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar
              helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes
              anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party
              scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
          </div>
          <div class="tab-pane fade" id="contact-just" role="tabpanel" aria-labelledby="contact-tab-just">
            <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro
              fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone
              skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings
              gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork
              biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl
              craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
          </div>
        </div>
        <ul class="nav nav-tabs nav-justified md-tabs indigo" id="myTabJust" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="home-tab-just" data-toggle="tab" href="#home-just" role="tab" aria-controls="home-just"
               aria-selected="true">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="profile-tab-just" data-toggle="tab" href="#profile-just" role="tab" aria-controls="profile-just"
               aria-selected="false">Reset Password</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="contact-tab-just" data-toggle="tab" href="#contact-just" role="tab" aria-controls="contact-just"
               aria-selected="false">Forgot Password</a>
          </li>
        </ul>
      </section>
    </section>
  </div>
<!-- Login form creation ends -->
</body>
</html>