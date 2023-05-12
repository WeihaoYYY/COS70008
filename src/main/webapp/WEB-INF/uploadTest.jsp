<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
  <link href="/static/css/style.css" rel="stylesheet" />

  <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css"
  />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.min.js"></script>

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
  </style>


  <script>  //--------------------------------
    function toggleQuestions() {
      var typeSelect = document.getElementById("type");
      console.log("Selected gender: " + typeSelect.value);
      // var general = document.getElementsByClassName("general");
      var identifier = document.getElementById("identifier1");
      var creator = document.getElementById("creator1");

      if (typeSelect.value === "SalesRecord"){
        identifier.style.display = "none";
        creator.style.display = "none";
      }else if (typeSelect.value === "ArticleJournal"
              || typeSelect.value === "ArticleNewspaper"
              || typeSelect.value === "PhotographCommercial"
              || typeSelect.value === "PhotographPersonal"
              || typeSelect.value === "BookTechnical") {
        identifier.style.display = "compact"
        creator.style.display = "compact";
      }else if (typeSelect.value === "BookHistorical"){
        identifier.style.display = "none";
        creator.style.display = "compact";
      }else {
        identifier.style.display = "compact";
        creator.style.display = "none";
      }

    }
  </script>

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
          <a class="nav-link" href="${pageContext.request.contextPath}/item/upload">Upload</a>
        </li>
      </ul>

    </div>
  </div>
</nav>

<!-- upload form -->
<form:form action="save" method="post" modelAttribute="item" enctype="multipart/form-data">
  <label for="file">Choose a file to upload:</label>
  <input type="file" name="file" id="file" />
  <select
          id="type"
          name="type"
          class="form-select form-select-lg mb-3"
          aria-label=".form-select-lg example"
          onchange="toggleQuestions()"
  >
    <option value="AdvertisementJournal" selected>Advertisement Journal</option>
    <option value="AdvertisementNewspaper">Advertisement Newspaper</option>
    <option value="ArticleJournal">Article Journal</option>
    <option value="ArticleNewspaper">Article Newspaper</option>
    <option value="BookHistorical">Book Historical</option>
    <option value="BookTechnical">Book Technical</option>
    <option value="PhotographCommercial">Photograph Commercial</option>
    <option value="PhotographPersonal">Photograph Personal</option>
    <option value="SalesBrochure">Sales Brochure</option>
    <option value="SalesRecord">Sales Record</option>
  </select>

  <div class="row mb-3 general">
    <label for="contributor" class="col-sm-3 col-form-label">Your Name:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="contributor"
              id="contributor"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="creator_email" class="col-sm-3 col-form-label"
    >Your Email:</label
    >
    <div class="col-sm-9">
      <form:input
              type="email"
              path="creator_email"
              id="creator_email"
              class="form-control"
              placeholder="required"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="title" class="col-sm-3 col-form-label">File Title:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="title"
              id="title"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="car_model" class="col-sm-3 col-form-label"
    >Car Model:</label
    >
    <div class="col-sm-9">
      <form:input
              type="text"
              path="car_model"
              id="car_model"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="publisher" class="col-sm-3 col-form-label"
    >Publisher:</label
    >
    <div class="col-sm-9">
      <form:input
              type="text"
              path="publisher"
              id="publisher"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="description" class="col-sm-3 col-form-label">Description:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="description"
              id="description"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3 creator" id="creator1">
    <label for="creator" class="col-sm-3 col-form-label">Creator:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="creator"
              id="creator"
              class="form-control"
              placeholder="required"
              required="required"
      />
    </div>
  </div>

  <div class="row mb-3" id="identifier1">
    <label for="identifier" class="col-sm-3 col-form-label">Identifier:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="identifier"
              id="identifier"
              class="form-control"
              placeholder=""
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="date" class="col-sm-3 col-form-label">Date:</label>
    <div class="col-sm-9">
      <form:input
              type="date"
              path="publish_date"
              id="date"
              class="form-control"
              placeholder="required"
      />

    </div>
  </div>


  <div class="row mb-3 general" >
    <label for="rights" class="col-sm-3 col-form-label">Rights:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="rights"
              id="rights"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="source" class="col-sm-3 col-form-label">Source:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="source"
              id="source"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <div class="row mb-3 general">
    <label for="subject" class="col-sm-3 col-form-label">Subject:</label>
    <div class="col-sm-9">
      <form:input
              type="text"
              path="subject"
              id="subject"
              class="form-control"
              placeholder="optional"
      />
    </div>
  </div>

  <input type="submit" value="Upload" class="uploadbtn" />
</form:form>

</body>
<footer class="text-center text-white" style="background-color: #777576">

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