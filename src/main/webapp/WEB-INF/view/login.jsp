<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>CRICKET WORLD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <link rel="stylesheet" href="C:\Users\COMPUTER\Desktop\header.html">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  .navbar {
    font-style: italic;
    background-color: rgba(red, green, blue, alpha);
    margin-bottom: 00px;
    border-radius: 0px;
    background-image: url("https://www.transparenttextures.com/patterns/gravel.png");
  }

  .form-group {
    color: black;
  }
</style>

<body>
  <nav class="navbar navbar-inverse ">
    <div class="container-fluid">
      <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
          <span class="icon-bar"></span>
            <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
            <div class="container">
        <a class="navbar-brand"> CRICKET WORLD</a>
        <a class="navbar-brand" href="#"><img src="" class="img-round"  height="30px" width="50px"></a>
      </div>
     <div class="nav navbar-nav">
          <ul class="nav navbar-nav">
          <li><a href="C:\Users\COMPUTER\Desktop\form.html"><span class="glyphicon glyphicon-home"></span>home</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-list"></span>category</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="C:\Users\COMPUTER\Desktop\login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
      </div>
      </div>
  </nav>

  <div class="container">
    <h2>Login Page</h2>
    <form action="#">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
      <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
      <div class="checkbox">
        <label><input type="checkbox" name="remember"> Remember me</label>
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</body>

</html>