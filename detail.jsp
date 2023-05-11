<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="style.css" rel="stylesheet" />
    <title>Details</title>
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

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.html"
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
              <a class="nav-link" href="#">Upload</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div style="margin:20px;">
	<table class="content" width="80%">
	   <c:forEach items="${list}" var="ad" >  <!--varStatus获取索引-->
		<tr class="body">
			<td class="pic"><img src=${ad.file_path} style="width:200px; height:200px; margin:20px;"></td>
			<td>
				<div class="heading">${ad.title}</div>
				<div>
					<table>
						<tr>
							<td class="label">Description:</td>
							<td colspan="3">${ad.description}</td>
						</tr>
						<tr>
							<td class="label">Publisher:</td>
							<td>${ad.publisher}</td>
							<td class="label">Publish Date:</td>
							<td>${ad.publish_date}</td>
						</tr>
						<tr>
							<td class="label">Subject:</td>
							<td>${ad.subject}</td>
							<td class="label">Car model:</td>
							<td>${ad.car_model}</td>
						</tr>
						<tr>
							<td class="label">Language:</td>
							<td>${ad.language}</td>
							<td class="label">Identifier:</td>
							<td>${ad.identifier}</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	   </c:forEach>
	</table>
    </div>
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
