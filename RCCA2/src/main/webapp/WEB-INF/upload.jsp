<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Shiqi
  Date: 2023/5/11
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Upload</title>
  <link href="static/css/style.css" rel="stylesheet" />
  <!-- bootstrap -->
  <!-- Include Bootstrap CSS and JS -->
  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css"
  />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js"></script>

  <!-- Latest compiled and minified CSS -->
  <!-- <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  /> -->

  <!-- Latest compiled JavaScript -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->

  <!-- Include Bootstrap-datepicker CSS and JS -->
  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"
  />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

  <!-- inner style -->
  <style type="text/css">
    form {
      margin: 40px auto;
      width: 800px;
      padding: 25px;
      border: 3px solid #999;
    }
    input[type="file"] {
      margin-top: 10px;
      margin-bottom: 20px;
    }
    /* input[type="submit"] {
      margin-top: 10px;
      background-color: #4caf50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    } */
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/item/index"
    ><img
            src="http://rovercarclubaust.asn.au/wp-content/uploads/2015/01/rccabadge.jpg"
            class="logo"
    /></a>
    <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">Admin Login</a>
        </li>
        <li class="nav-item">
          <!-- all the category will in one upload page, they have the same form, I will create later. -->
          <a class="nav-link" href="${pageContext.request.contextPath}/item/upload">Upload</a>
        </li>
        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Upload
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Advertisements</a></li>
            <li><a class="dropdown-item" href="#">Photos</a></li>
            <li><a class="dropdown-item" href="#">News Articles</a></li>
            <li><a class="dropdown-item" href="#">Sales Records</a></li>
            <li><a class="dropdown-item" href="#">Sales Brochures</a></li>
          </ul>
        </li> -->

        <!-- <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li> -->
      </ul>
      <!-- <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
    </div>
  </div>
</nav>

<!-- upload form -->
<form action="upload.php" method="post" enctype="multipart/form-data">
  <label for="file">Choose a file to upload:</label>
  <input type="file" name="file" id="file" />
  <select
          name="category"
          class="form-select form-select-lg mb-3"
          aria-label=".form-select-lg example"
  >
    <option value="advertisement">Advertisement</option>
    <option value="photos">Photos</option>
    <option value="news">News</option>
    <option value="salesrecord">Sales Record</option>
    <option value="salesbrochure">Sales Brochures</option>
  </select>

  <div class="row mb-3">
    <label for="title" class="col-sm-3 col-form-label">File Title:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="title"
              id="title"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="car_model" class="col-sm-3 col-form-label"
    >Car Model:</label
    >
    <div class="col-sm-9">
      <input
              type="text"
              name="car_model"
              id="car_model"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="publisher" class="col-sm-3 col-form-label"
    >Publisher:</label
    >
    <div class="col-sm-9">
      <input
              type="text"
              name="publisher"
              id="publisher"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="description" class="col-sm-3 col-form-label"
    >Description:</label
    >
    <div class="col-sm-9">
      <input
              type="text"
              name="description"
              id="description"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="date" class="col-sm-3 col-form-label">Publish Date:</label>
    <div class="col-sm-9">
      <!-- <div class="input-group date" id="datepicker"> -->
      <input
              type="date"
              name="date"
              id="date"
              class="form-control"
              placeholder="required"
              required
      />
      <!-- <span class="input-group-append">
          <span class="input-group-text bg-white"
            ><i class="fa fa-calendar"></i>
          </span>
        </span> -->
      <!-- </div> -->
    </div>
  </div>

  <div class="row mb-3">
    <label for="last_updated_date" class="col-sm-3 col-form-label"
    >Last Updated Date:</label
    >
    <div class="col-sm-9">
      <!-- <div class="input-group date" id="datepicker"> -->
      <input
              type="date"
              name="last_updated_date"
              id="last_updated_date"
              class="form-control"
              placeholder="optional"
      />
      <!-- <span class="input-group-append">
          <span class="input-group-text bg-white"
            ><i class="fa fa-calendar"></i>
          </span>
        </span> -->
      <!-- </div> -->
    </div>
  </div>

  <div class="row mb-3">
    <label for="creator" class="col-sm-3 col-form-label">Your Name:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="creator"
              id="creator"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="creator_email" class="col-sm-3 col-form-label"
    >Your Email:</label
    >
    <div class="col-sm-9">
      <input
              type="email"
              name="creator_email"
              id="creator_email"
              class="form-control"
              placeholder="required"
              required
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="relation" class="col-sm-3 col-form-label">Relation:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="relation"
              id="relation"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="rights" class="col-sm-3 col-form-label">Rights:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="rights"
              id="rights"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="source" class="col-sm-3 col-form-label">Source:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="source"
              id="source"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <div class="row mb-3">
    <label for="subject" class="col-sm-3 col-form-label">Subject:</label>
    <div class="col-sm-9">
      <input
              type="text"
              name="subject"
              id="subject"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <input type="submit" name="submit" value="Upload" class="uploadbtn" />
</form>
<!-- <div class="input-group mb-3">
  <input type="file" class="form-control" id="inputGroupFile02" />
  <label class="input-group-text" for="inputGroupFile02">Upload</label>
</div> -->

<!-- <script type="text/JavaScript">
  $(function () {
    $('#datepicker').datepicker();
  });
</script> -->
</body>
<footer class="text-center text-white" style="background-color: #777576">
  <!-- Grid container -->
  <!-- <div class="container p-4"></div> -->
  <!-- Grid container -->

  <!-- Copyright -->
  <div
          class="text-center p-2"
          style="background-color: rgba(126, 126, 201, 0.5)"
  >
    © 2023 Copyright:
    <a class="text-white" href="#">ROVER CAR CLUB OF AUSTRALIAUP ↑</a>
  </div>
  <!-- Copyright -->
</footer>
</html>
