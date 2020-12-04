<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <style type="text/css">
   /* set entire body that is webpage */
    body{
      background: #383a3d;
      padding-top: 25vh;
    }
    /* set form background colour*/
    .login-form{
      background: #fff;
    }
    /* set padding and size of th form */
    .form-container{
      border-radius: 5px;
      padding: 30px;
    }
  </style>
</head>

<body>

<!-- Login form creation starts-->
<section class="container-fluid">
  <!-- row and justify-content-center class is used to place the form in center -->
  <section class="row justify-content-center">
    <section class="col-12 col-sm-6 col-md-4">
      <form class="form-container login-form">

        <div class="form-group">
          <h4 class="text-center font-weight-bold"> Login </h4>
          <label for="InputEmail1">Email Address</label>
          <input type="email" class="form-control" id="InputEmail1" aria-describeby="emailHelp" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label for="InputPassword1">Password</label>
          <input type="password" class="form-control" id="InputPassword1" placeholder="Password">
        </div>


        <button type="submit" class="btn btn-primary btn-block">Submit</button>
        <div class="form-footer">
          <p> Don't have an account? <a href="#">Sign Up</a></p>

        </div>
      </form>
    </section>
  </section>
</section>
<!-- Login form creation ends -->
</body>
</html>