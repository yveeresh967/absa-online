
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   
    <link rel="stylesheet" type= "text/css" 
href="${pageContext.request.contextPath}/resources/css/menu.css"/>
    
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <nav>
    <div class="navbar">
      <i class='bx bx-menu'></i>
      <div class="logo"><a href="#">Elite SoftwareTraining Institute</a></div>
      <div class="nav-links">
        <div class="sidebar-logo">
          <span class="logo-name">Elite SoftwareTraining Institute</span>
          <i class='bx bx-x' ></i>
        </div>
        <ul class="links">
          <li><a href="#">HOME</a></li>
          <li>
            <a href="#">Courses</a>
            <i class='bx bxs-chevron-down htmlcss-arrow arrow  '></i>
            <ul class="htmlCss-sub-menu sub-menu">
              <li><a href="#">FullStack Java</a></li>
              <li><a href="#">.Net</a></li>
              <li><a href="#">Phython</a></li>
			     <li><a href="#">Salesforce</a></li>
				    <li><a href="#">Devops</a></li>
              
             
            </ul>
          </li>
          <li>
            <a href="#">Profile</a>
            <i class='bx bxs-chevron-down js-arrow arrow '></i>
            <ul class="js-sub-menu sub-menu">
              <li><a href="#">Update Profile</a></li>
              <li><a href="#">Update Password</a></li>
              <li><a href="#">Updates</a></li>
              
            </ul>
          </li>
          <li><a href="#">ABOUT US</a></li>
          <li><a href="#">CONTACT US</a></li>
        </ul>
      </div>
      <div class="search-box">
        <i class='bx bx-search'></i>
        <div class="input-box">
          <input type="text" placeholder="Search...">
        </div>
      </div>
    </div>
  </nav>
  <div align="center" class="text">

		<h2>
			A warm Welcome to Elite Software Training Institute!! <b>Mr/Ms
				${firstname}</b>
		</h2>
		<p>Start your IT career with ELITE As Java FullStack Developer</p>

	</div>
	

</body>
</html>