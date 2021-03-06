<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>signUp</title>
    <link rel="shortcut icon" href="assets/images/feature/11.jpg">

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <!-- icon font - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    <!-- popup - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

    <!-- jquery-ui - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  </head>

  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <main>

      <!-- cart_sidebar - start
        ================================================== -->
      <!-- cart_sidebar - end
        ================================================== -->

      <!-- breadcrumb_section - start
        ================================================== -->
      <section class="breadcrumb_section text-uppercase"
        style="background-image: url(./assets/images/logo/signUp.png);">
      </section>
      <!-- breadcrumb_section - end
        ================================================== -->

      <!-- contact_section - start
        ================================================== -->
      <section class="contact_section sec_ptb_120 bg_default_gray">
        <div class="container">
          <h1 class="text-center">Sign Up</h1><br>
          <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">


            <form action="insertMember.do" method="GET">
              <div class="row justify-content-center">
                <div class="col-lg-8">
                  <div class="form_item">
                    <label for="memberId">?????????</label>
                    <input type="text" name="memberId" id="memberId" placeholder="???????????? ??????????????????." autofocus required />
                  </div>
                </div>
                <div class="col-lg-4" style="display: flex; align-items: center;">
                  <div style="display: flex; align-items: center; margin-top: 18px;">
                    <button type="button" class="btn btn_primary">????????????</button>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form_item">
                    <label for="memberPass">????????????</label>
                    <input type="password" name="memberPass" placeholder="password??? ??????????????????." required />
                  </div>
                </div>
                <div class="col-lg-12">
                  <!-- <div class="form_item">
                    <label for="passwordcheck">??????????????????</label>
                    <input type="password" name="memberPasscheck" placeholder="password??? ?????? ??? ??????????????????." required/>
                  </div> -->


                  <div class="form_item">
                    <label for="name">??????</label>
                    <input type="text" name="memberName" placeholder="????????? ??????????????????." required />
                  </div>

                </div>
                <label for="memberEmail">?????????</label>
                <input id="memberEmail" type="email" name="memberEmail" placeholder="email??? ??????????????????." required />
              </div>

              <div class="col-lg-6">
                <div class="form_item">
                  <label for="memberPhone">????????????</label>
                  <input type="text" name="memberPhone" placeholder="??????????????? ??????????????????." required />
                </div>
              </div>
              <div class="col-lg-6" style="display: flex; align-items: center;">
                <div style="display: flex; align-items: center; margin-top: 18px;">
                  <button type="button" class="btn btn_primary">????????????</button>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form_item">
                  <label for="address">??????</label>
                  <input type="text" placeholder="???????????? ??????" required />
                </div>
              </div>
              <div class="col-lg-6" style="display: flex; align-items: center;">
                <div style="display: flex; align-items: center; margin-top: 18px;">
                  <button type="button" class="btn btn_primary">??????</button>
                </div>
              </div>
              <div class="col-lg-12">
                <div class="form_item">
                  <input style="margin-bottom:10px;" type="text" name="memberAddress" placeholder="????????? ??????????????????."
                    required />
                  <!--   <input type="adress" name="adress" placeholder="??????????????? ??????????????????."> -->
                </div>
              </div>
          </div>
          <div class="text-center">
            <input type="submit" value="Sign Up" class="btn btn_primary text-uppercase" />
          </div>
          </form>
          <!-- <div class="text-center" style="margin-top: 5%;">
                <a href="./join.jsp">Log In</a>
              </div> -->
        </div>
        </div>
      </section>
      <!-- contact_section - end
        ================================================== -->

      <!-- google map - start
        ================================================== -->
      <!-- google map - end
        ================================================== -->

    </main>
    <!-- main body - end
      ================================================== -->
    <jsp:include page="footer.jsp"></jsp:include>
  </body>

  </html>