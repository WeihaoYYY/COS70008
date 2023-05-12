<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Shiqi
  Date: 2023/5/11
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>result1</title>
    <link href="/static/css/style.css" rel="stylesheet" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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

<section
        class="main bg-imgage"
>
    <h1 class="text-center fs-3 pt-5">${item.title}</h1>
    <div class="d-flex justify-content-center">
        <span class="description">
          ${item.description}
        </span>
    </div>
    <div class="d-flex justify-content-center">
        <a href="${item.file_path}" class="btn btn-secondary"
        >Click to View or Download</a
        >
    </div>


<%--    <!-- detailed information flex div -->--%>
    <div class="d-flex justify-content-center">
        <div class="d-flex">
            <div class="listleft">
                <ul class="list">
                    <li>Category: ${item.type}</li>
                    <li>Car Model: ${item.car_model}</li>
                    <li>Publisher: ${item.publisher}</li>
                </ul>
            </div>

            <div class="listright">
                <ul class="list">
                    <li>Publish Date: ${item.publish_date}</li>
                    <li>Language: EN</li>
                </ul>
            </div>
        </div>
    </div>

<%--    <ul class="list">--%>
<%--        <li>Category: ${item.type}</li>--%>
<%--        <li>Car Model: ${item.car_model}</li>--%>
<%--        <li>Publisher: ${item.publisher}</li>--%>
<%--        <li>Publish Date: ${item.publish_date}</li>--%>
<%--&lt;%&ndash;        <li>Publisher: Regent Motors</li>&ndash;%&gt;--%>
<%--    </ul>--%>
    <hr />
</section>


<!-- interest part -->
<h5>You may be interested in</h5>
<!-- <hr /> -->
<div class="interest_container">
    <!-- item1 -->
    <div class="col d-flex justify-content-center interest_item">
        <div class="card mb-3 mt-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <img
                            src="http://rovercarclubaust.asn.au/wp-content/uploads/2015/01/rccabadge.jpg"
                            class="img-fluid rounded-start"
                            alt="..."
                            width="20px"
                            height="20px"
                    />
                </div>
                <div class="col-md-12">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="result1.html" class="titlelink"
                            >"Rover One Of Britains Fine Cars"</a
                            >
                        </h5>
                        <p class="card-text">Author: Herald</p>
                        <p class="card-text">
                            <small class="text-muted">24/06/1949</small>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- item2 -->
    <div class="col d-flex justify-content-center interest_item">
        <div class="card mb-3 mt-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <img
                            src="http://rovercarclubaust.asn.au/wp-content/uploads/2015/01/rccabadge.jpg"
                            class="img-fluid rounded-start"
                            alt="..."
                            width="20px"
                            height="20px"
                    />
                </div>
                <div class="col-md-12">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="result1.html" class="titlelink"
                            >"Rover One Of Britains Fine Cars"</a
                            >
                        </h5>
                        <p class="card-text">Author: Herald</p>
                        <p class="card-text">
                            <small class="text-muted">24/06/1949</small>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- item3 -->
    <div class="col d-flex justify-content-center interest_item">
        <div class="card mb-3 mt-3">
            <div class="row g-0">
                <div class="col-md-4">
                    <img
                            src="http://rovercarclubaust.asn.au/wp-content/uploads/2015/01/rccabadge.jpg"
                            class="img-fluid rounded-start"
                            alt="..."
                            width="20px"
                            height="20px"
                    />
                </div>
                <div class="col-md-12">
                    <div class="card-body">
                        <h5 class="card-title">
                            <a href="result1.html" class="titlelink"
                            >"Rover One Of Britains Fine Cars"</a
                            >
                        </h5>
                        <p class="card-text">Author: Herald</p>
                        <p class="card-text">
                            <small class="text-muted">24/06/1949</small>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
