<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Shiqi
  Date: 2023/5/10
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="/static/css/style.css" rel="stylesheet" />
  <title>Homepage</title>
  <!-- Latest compiled and minified CSS -->
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
<div class="formsection">
  <form method="get" action="search" class="search_form">
    <label>Select Category:</label>
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
    <div class="d-flex">
      <input
              type="text"
              name="search"
              placeholder="Enter your search term"
              aria-label="Search"
              class="form-control me-1"
      />
      <button type="submit" class="btn btn-success">Search</button>
    </div>
  </form>
</div>


<%-- Card List section --%>
<%--output list of information via loop--%>
<c:forEach items="${list}" var="ad" >
  <div class="col d-flex justify-content-center">
    <div class="card mb-3 mt-3" style="width: 800px">
      <div class="row g-0">
        <div class="col-md-4">
          <img src="http://rovercarclubaust.asn.au/wp-content/uploads/2015/01/rccabadge.jpg" class="logo img-fluid rounded-start" alt="list_image" />
        </div>
        <div class="col-md-12">
          <div class="card-body">
            <h5 class="card-title">
                <%--                        link to the detailed page--%>
              <a href="detail?id=${ad.rid}" class="titlelink"
              >${ad.title}</a
              >
            </h5>
              <%--                    Output author and date according to the database--%>
            <p class="card-text">
              <small class="text-muted">Description: ${ad.description}</small>
            </p>
            <p class="card-text">Category: ${ad.type}</p>
            <p class="card-text">Publisher: ${ad.publisher}</p>
            <p class="card-text">
              <small class="text-muted">${ad.publish_date}</small>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</c:forEach>


<%--<table border="1" cellpadding="5">--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--    </tr>--%>

<%--    <c:forEach items="${list}" var="ad" >  <!--varStatus获取索引-->--%>
<%--        <tr>--%>
<%--            <td>${ad.rid}</td>--%>
<%--            <td>${ad.creator}</td>  <!--为什么这里显示name而不是customer name，因为这里对应的是getName方法-->--%>
<%--                &lt;%&ndash;      <td>&ndash;%&gt;--%>
<%--                &lt;%&ndash;        <a href="${pageContext.request.contextPath}/item/detail?id=${ad.aid}">Edit</a>&ndash;%&gt;--%>
<%--                &lt;%&ndash;      </td>&ndash;%&gt;--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

</body>

<!-- list section -->
<%--<section>--%>
<%--    <ul class="list">--%>
<%--        <li>--%>
<%--            <p class="title">--%>
<%--                <a href="result1.html" class="titlelink"--%>
<%--                >"Rover One Of Britains Fine Cars"</a--%>
<%--                >--%>
<%--            </p>--%>
<%--            <div class="detail">--%>
<%--                <span class="author">Herald</span>--%>
<%--                <span class="creationdate">24/06/1949</span>--%>
<%--            </div>--%>
<%--        </li>--%>

<%--        <li>--%>
<%--            <p class="title">--%>
<%--                <a href="result2.html" class="titlelink"--%>
<%--                >"Its All In A Days Work For The Land-Rover"</a--%>
<%--                >--%>
<%--            </p>--%>
<%--            <div class="detail">--%>
<%--                <span class="author">Age</span>--%>
<%--                <span class="creationdate">01/05/1949</span>--%>
<%--            </div>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</section>--%>

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


