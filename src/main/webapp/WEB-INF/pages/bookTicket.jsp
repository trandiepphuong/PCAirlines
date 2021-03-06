<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="bg" value="/resources/public/assets/img/background.jpg"/>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Index Page</title>
        <!-- Google Fonts -->
        <link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet"  type="text/css" >
        <link  href="<c:url value="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />" rel="stylesheet"  type="text/css" >

        <link href="<c:url value="/resources/public/assets/css/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"  >
        <!--    load shortcut icon-->

        <link rel="shortcut icon" href="<c:url value="/resources/public/assets/img/logox.png"/>"   type="image/x-icon">
        <link rel="icon" href="<c:url value="/resources/public/assets/img/logox.png" />"    type="image/x-icon">
    <!--    <link  href="<c:url value="glider.css"/>" rel="stylesheet" stype="text/css">-->
        <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet" >

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <link rel="stylesheet" href="<c:url value="/resources/css/linearicons.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>" >
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css"/>">			
        <link rel="stylesheet" href="<c:url value="/resources/css/nice-select.css"/>">						
        <link rel="stylesheet" href="<c:url value="/resources/css/animate.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/bookTicket.css"/>">

    </head>

    <body>
                <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top">
                <div class="container">
                    <a class="navbar-brand" href="<c:url value="/index"/>"><i class="fas fa-plane-departure"></i></i> PC Airlines</a>
                    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation"><i class="fas fa-bars"></i></button>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <c:choose>
                                <c:when test="${empty sessionScope.username}"> 
                                    <li class="nav-item active">
                                        <a class="nav-link" href="<c:url value="/login"/>">????ng nh???p <span class="sr-only">(current)</span></a>

                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-item dropdown no-arrow">
                                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span >????ng nh???p b???i: ${sessionScope.username}</span>
                                        </a>
                                        <!-- Dropdown - User Information -->
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                            <a class="dropdown-item" href="<c:url value="/userInformation"/>">
                                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                                Th??ng tin t??i kho???n
                                            </a>
                                            
                                            <a class="dropdown-item" href="<c:url value="/customer/history"/>">
                                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                               L???ch s??? thanh to??n
                                            </a>
                                            <div class="dropdown-divider"></div>
                                           <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                                ????ng xu???t
                                            </a>
                                        </div>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">S??n bay</a>
                                <div class="dropdown-menu" aria-labelledby="dropdownId">
                                    <a class="dropdown-item" href="#">S??n bay c??c t???nh mi???n B???c</a>
                                    <a class="dropdown-item" href="#">S??n bay c??c t???nh mi???n Trung</a>
                                    <a class="dropdown-item" href="#">S??n bay c??c t???nh mi???n Nam</a>
                                </div>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#">Tuy???n bay </a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="#">Tin t???c </a>
                            </li>
                            <li class="nav-item">
                                <button type="button" class="btn btn-light"><i class="fas fa-phone"></i> Hotline</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">??</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <!--<a class="btn btn-primary" href="login.html">Logout</a> -->
                            <form action="<c:url value="/j_spring_security_logout" />" method="post">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <input type="submit" class="btn btn-warning" value="????ng xu???t" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="wrap">
            <div class="wrap-admin" style="background-image:url(${bg})">
                <div class="container">
                     <section class="banner-area relative">
                    <div class="container contact-form">
                        <mvc:form method="POST" action="ticketInfo" modelAttribute="ticketInfo">
                            <c:choose>
                                <c:when test="${numberAdult > 0}">                         
                                   <h4>Th??ng tin cho ng?????i l???n</h4>
                                    <c:forEach var="i" begin="1" end="${numberAdult}">
                                        <mvc:hidden path="listId" value="${i}"/>
                                       
                                        <div style="border-style : double">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <mvc:input path="listNameAdultGo" class="form-control" placeholder="Nh???p ?????y ????? h??? t??n c???a b???n" required="required" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" placeholder="Nh???p ?????a ch??? c???a b???n" required/>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <mvc:input path="listIdentify"  class="form-control" placeholder="Nh???p CMND c???a b???n : " required="required"/>
                                                </div>
                                            </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" placeholder="Ng??y c???p CMND : "
                                                               onfocus="(this.type='date')" required> 
                                                    </div>
                                                </div>
                                        </div>
                                        </div>        
                                    </c:forEach>
                                    <br>
                                </c:when>
                            </c:choose>
                            <c:choose>
                                <c:when test="${numberChildren > 0}">
                                     <h4>Th??ng tin cho Tr??? Em</h4>
                                    <c:forEach var="i" begin="1" end="${numberChildren}">
                                       
                                        <mvc:hidden path="listId" value="${i}"/>
                                        <div style="border-style : double">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <mvc:input path="listNameChildrenGo" class="form-control" placeholder="Nh???p t??n c???a b??" required="required"/>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                        <input type="text" placeholder="Ng??y sinh c???a b?? : "
                                                               onfocus="(this.type='date')" required=""> 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input class="form-control" placeholder="Nh???p t??n ng?????i ??i c??ng" />
                                                </div>
                                            </div>
                                                
                                        </div>
                                    </c:forEach>
                                </c:when>        
                            </c:choose>              
                            <mvc:hidden path="flightId" value="${flight.flightID}"/>                
                            <mvc:hidden path="ticketClassId" value="${ticketClassId}"/>              
                            <mvc:hidden path="priceUnitAdult" value="${priceAdultUnit}"/>              
                            <mvc:hidden path="priceUnitChildren" value="${priceChildrenUnit}"/>              
                            <mvc:hidden path="bookingId" value="${booking.bookingId}"/>              
                            <mvc:button class="btnRegister">?????t v??</mvc:button>
                        </mvc:form>    
                    </div>
                     </section>
                </div>
            </div>
        </div>
        <div class="promotion">
            <div class="container">
                <h2 class="text-uppercase font-bolder">??u ????i</h2>
                <div class="row blog">
                    <div class="col-md-12 mx-auto">
                        <div id="blogCarousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#blogCarousel" data-slide-to="1"></li>
                            </ol>
                            <!-- Carousel items -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->

                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                        <div class="col-md-3">
                                            <a href="#">
                                                <img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;">
                                            </a>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->

                            </div>
                            <!--.carousel-inner-->
                        </div>
                        <!--.Carousel-->

                    </div>
                </div>
            </div>
        </div>
        <div class="about-system">
            <div class="container">
                <div class="row">
                    <div class="contents col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <h3 class="about-title">
                            Gi???i thi???u
                        </h3>
                        <p class=" about-text">
                            ???? N???ng l?? th??nh ph??? l???n th??? 3 t???i Vi???t Nam v??? nhi???u ??i???m ?????n du l???ch h???p d???n thu h??t ????ng ?????o kh??ch du l???ch trong v?? ngo??i n?????c nh?? B?? N?? Hill, Nh???ng c??y c???u ?????p nh???t ???? N???ng, Bi???n M??? Kh??, V??ng Xoay M??t Tr???i,???.Ch??nh v?? th??? m?? nhu c???u mua v?? m??y bay t???i
                            ???? N???ng ng??y m???t t??ng cao. ????? c?? th??? d??? d??ng ki???m thu nh???p t??? vi???c b??n v?? m??y bay t???i khu v???c n??y m???t c??ch d??? d??ng v?? ???????c h??? tr??? t???t nh???t trong qu?? tr??nh ?????t v?? h??y ???ng tuy???n ?????i l?? v?? m??y bay c???p 2 t???i ???? N???ng ????? nh???t ???????c nhi???u d???ch v??? ??u ????i m?? Vi???t
                            M??? mang l???i nh??. 
                        </p>
                    </div>
                    <div class="contents col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <h3 class="about-title">
                            Cam k???t
                        </h3>
                        <p class=" about-text">
                            - D???ch v??? ?????t v?? ho??n h???o <br>
                            - Ph???c v??? qu?? kh??ch 24/7 <br>
                            - Cam k???t gi?? v?? ??i ???? N???ng r??? nh???t <br>
                            - Giao v?? t???i ?????a ch??? kh??ch h??ng <br>
                            - T?? v???n ????? ch???n ???????ng bay t???t, gi?? t???t <br>
                            - Lu??n g???i ??i???n b??o tr?????c khi kh???i h??nh <br>
                            - T?? v???n h??? tr??? mi???n ph?? c??c th??ng tin li??n quan <br>
                            - Ch??? ?????ng b??o kh??ch khi chuy???n bay thay ?????i <br>
                        </p>
                    </div>
                    <div class="contents col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <h3 class="about-title">
                            ??u ????i
                        </h3>
                        <p class=" about-text">
                            V?? nhi???u l?? do, c?? m???t s??? v?? m??y bay khuy???n m??i ???????c c??c h??ng h??ng kh??ng Vietnam Airlines, Vietjet, Jetstar, Air Asia tung ra trong m???t ng??y bay nh???t ?????nh, v?? ??i???u n??y, ch??nh c??c booker b??n v?? m??y bay c???a ?????i l?? c??ng kh??ng bi???t ???????c (v?? c?? qu?? nhi???u ng??y,
                            nhi???u chuy???n). N???u qu?? kh??ch t??nh c??? ph??t hi???n ???????c ng??y n??o, chuy???n bay n??o c?? v?? gi?? r???, khuy???n m??i, v?? c?? nhu c???u book ????ng v?? m??y bay ????, h??y g???i cho ch??ng t??i, ch??ng t??i s??? book h??? b???n v?? khuy???n m??i, giao v?? v?? m??y bay gi?? r??? t???n n??i v?? ch??? thu ph?? ph???c v???.
                        </p>
                    </div>
                    <div class="contents col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <h3 class="about-title">
                            L???i c???m ??n
                        </h3>
                        <p class=" about-text">
                            S??? ph??t tri???n c???a c??ng ty PC Airline ph??? thu???c v??o s??? quan t??m v?? ???ng h??? c???a qu?? kh??ch. Trong su???t th???i gian qua v?? hy v???ng trong th???i gian t???i c??ng ty s??? c?? nhi???u ch??nh s??ch t???t nh???t ????? mang ?????n s??? h??i l??ng cho kh??ch h??ng.
                            <br>Xin tr??n tr???ng c???m ??n!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class=" about-block col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                        <h3>
                            About us
                        </h3>
                        <ul>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> Gi???i thi???u trung t??m h??ng kh??ng
                                </a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> Tuy???n d???ng
                                </a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> Li??n H???
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class=" about-block col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                        <h3>
                            H??? tr???
                        </h3>
                        <ul class="">
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> H?????ng d???n ????ng k??</a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> Quy ch??? trung t??m h??ng kh??ng
                                </a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fas fa-arrow-circle-right links"></i> Li??n H???
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class=" about-block col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                        <h3>
                            K???t n???i v???i ch??ng t??i
                        </h3>
                        <ul class="mxh">
                            <li class="  contents-list">
                                <a href="">
                                    <i class="fab fa-facebook-square  mxh-icon"></i>
                                </a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fab fa-instagram mxh-icon"></i>
                                </a>
                            </li>
                            <li class=" contents-list">
                                <a href="">
                                    <i class="fab fa-twitter-square mxh-icon"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr style="border:0.5px solid white; width: 50%; margin: auto;">
            <div class="container">
                <div class="row">
                    <span class="col-xl-12 col-md-12 col-sm-12 col-lg-12 col-12 text-center">??2020 by Ch??nh & Ph????ng</span>
                </div>
            </div>
        </div>
    </footer>
    <script src="<c:url value="/resources/public/assets/js/jquery.jcarousel.min.js"/>"></script>
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"/>"></script>
    <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <script  src="<c:url value="/resources/public/assets/js/main.js"/>"></script>
    <script src="<c:url value="https://code.jquery.com/ui/1.8.22/jquery-ui.js"/>"></script>
</body>
</html>