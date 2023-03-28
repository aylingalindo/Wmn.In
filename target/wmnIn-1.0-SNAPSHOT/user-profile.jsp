<%-- 
    Document   : user-profile
    Created on : Mar 21, 2023, 10:05:39 PM
    Author     : Aylin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
    <!-- link de los icons q vaya a usar y font-->
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital@1&family=Roboto:wght@100&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css"/>
    <script defer src="funcionalidad.js"></script>
    <title>wm.In</title>
</head>
<body>
  <div class="d-flex"> 
    <div id="overlay"></div>
    <!-- NAV BAR-->
    <div id="sidebar" class="bg-primary">

        <!--logo-->
        <h4 class="logo">wm.In</h4>  <!-- no se pone bold??? -->

        <!--search bar-->
        <form class="d-flex position-relative p-3 d-inline-block" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn searchNavbar position-absolute" type="submit"><i class="icon ion-md-search"></i></button>
        </form>
        <button data-modal-target="#popupAdvancedSearch" type="button" class="btn btn-primary ms-4 advancedSearchBtn">Advanced Search</button>

        <!--elementos para seleccionar-->
        <div class="menu d-flex flex-column justify-content-evenly mb-5 pb-5">

          <!-- Info User-->
          <div class="nav-item pb-3 userInfo">
            <img src="assets/fotoPerfil.jpeg" class="img-fluid rounded-circle pfp mb-2">
            <a href="user-profile.html" class="nav-link mb-2">Aylin Galindo</a>    <!-- dblock para que cada uno este en una linea y p-3 para separalos-->
            <p class="mb-2">Game Dev Student</p>
          </div>

          <!-- Links -->
          <div class="container px-5 pb-3">
            <div class="row misLinks">
              <div class="col-2 pe-1">
                <i class="icon ion-md-notifications lead align-self-center"></i>
              </div>
              <div class="col-8">
                <a href="#" class="nav-link">Notifications</a> 
              </div>
            </div>
            <div class="row misLinks">
              <div class="col-2 pe-1">
                <i class="icon ion-md-mail lead"></i>
              </div>
              <div class="col-8">
                <a href="#" class="nav-link">Messages</a>
              </div>
            </div>
            <div class="row misLinks">
              <div class="col-2 pe-1">
                <i class="icon ion-md-home lead "></i>
              </div>
              <div class="col-8">
                <a href="dashboard.jsp" class="nav-link">Home</a>
              </div>
            </div>
            <div class="row misLinks">
              <div class="col-2 pe-1">
                <i class="icon ion-md-exit"></i>
              </div>
              <div class="col-8">
                <a href="index.jsp" class="nav-link">Log out</a>
              </div>
            </div>
          </div>

        </div>
    </div>

    <!-- CONTENT -->
    <div id="content">

      <!-- POP UP ADVANCED SEARCH-->
      <div id="popupAdvancedSearch" class="card">

        <!-- titulo y boton que se van a quedar siempre -->
        <div class="card-header">
          <div class="row">
            <div class="col-10 ms-5 me-auto mt-3">
              <h4>Advanced Search</h4>
            </div>
            <div class="col pt-3">
              <button data-close-button type="button" class="closeBtn"><i class="icon ion-md-close"></i></button>
            </div>
          </div>
        </div>

        <!-- contenido que va a cambiar -->
        <div class="card-body">
          <div class="row mx-3">
            <label class="form-label">Date range</label>
          </div>
          <div class="row mx-3 mb-4">
            <div class="col ms-5">
              <input type="date" class="form-control" name="fechaInicio" value=""/>
            </div>
            <div class="col fs-3 ps-5 pe-0">
              <label class="form-label">---</label>
            </div>
            <div class="col me-5">
            <input type="date" class="form-control" name="fechaFin" value=""/>
            </div>
          </div>
          <div class="row mx-3">
            <label class="form-label">Category</label>
          </div>
          <div class="row mx-3 mb-4 newpostContainer">
            <div class="col">
              <i class="icon ion-md-pricetags ms-2 mt-2"></i>
            </div>
            <div class="col-11 categories">
              <button type="button" class="cat btn">#Science</button>
              <button type="button" class="cat btn">#Tech</button>
              <button type="button" class="cat btn">#Art</button>
              <button type="button" class="cat btn">#Design</button>
              <button type="button" class="cat btn">#Business</button>
              <button type="button" class="cat btn">#Psychology</button>
              <button type="button" class="cat btn">#Medicine</button>
              <button type="button" class="cat btn">#Human Arts</button>
            </div>
          </div>
          <div class="row mx-3 my-4">
              <button type="submit" class="btn btn-primary signUpBtn">Search</button>
          </div>
        </div>

      </div>

      <!-- PERFIL -->
      <section class="border-bottom">
        <div class="container contentItem headerPerfil">
          <div class="portadaPerfil">
            <img class="img-fluid" src="assets/fotoPortada.jpeg">
          </div>
          <div class="d-flex ms-5">
            <div class="pfpDiv align-self-baseline">
              <img src="assets/fotoPerfil.jpeg" class="img-fluid rounded-circle pfpPerfil">
            </div>
            <div class="flex-column ms-3 me-auto">
              <div class="row">
                <h2 class="m-0">Aylin Galindo</h2>
              </div>
              <div class="row">
                <h6>128 community friends</h6>
              </div>
            </div>
            <button type="button" class="btn btn-primary signUpBtn m-4">
              <i class="icon ion-md-create"></i>
              <i class="icon ion-md-add invisible"></i>
            </button>
          </div>
        </div>
      </section>

      <!-- DATOS -->
      <section>

        <!-- ABOUT EL USUARIO-->
        <div class="card contentItem">
          <div class="card-header">
            <div class="row">
              <div class="col-11">
                <h4>About</h4>
              </div>
              <div class="col ps-5 pe-0">
                <button data-close-button type="button" class="closeBtn px-0"><i class="icon ion-md-create px-0"></i></button>
              </div>
            </div>
          </div>
          <div class="card-body">

            <div class="row">
              <div class="col-3">
                <h6><i class="icon ion-md-briefcase pe-2"></i>Occupation:</h6>
              </div>
              <div class="col">
                <p>Game Developer</p>
              </div>
            </div>

            <div class="row">
              <div class="col-3">
                <h6><i class="icon ion-md-person pe-2"></i>User:</h6>
              </div>
              <div class="col">
                <p>@aylingalindo</p>
              </div>
            </div>

            <div class="row">
              <div class="col-3">
                <h6><i class="icon ion-md-calendar pe-2"></i>Age:</h6>
              </div>
              <div class="col">
                <p>21 years</p>
              </div>
            </div>

            <div class="row">
              <div class="col-3">
                <h6><i class="icon ion-md-at pe-2"></i>Email:</h6>
              </div>
              <div class="col">
                <p>aylingalindo@email.com</p>
              </div>
            </div>

            <div class="row">
              <div class="col-3">
                <h6><i class="icon ion-md-home pe-2"></i>Location:</h6>
              </div>
              <div class="col">
                <p>Monterrey, MX</p>
              </div>
            </div>

          </div>
        </div>

        <!-- MY COMMUNITY / mis amigos -->
        <div class="card contentItem">
          <div class="card-header communitySorting">
            <div class="row">
              <h4>Community</h4> 
            </div>

            <!-- div de friend requests -->
            <div class="row">
              <div class="col sortingItem active">
                <a href="#" class="nav-link">My Community</a> 
              </div>
              <div class="col sortingItem">
                <a href="#" class="nav-link">Friend requests</a> 
              </div>
            </div>
          </div>

          <!-- friends users-->
          <div class="card-body">

            <div class="row m-3">
              <div class="col d-flex">
                <img src="assets/razor.jpeg" class="img-fluid pfpFriend">
                <h6 class="ms-3">Razor</h6>
              </div>
              <div class="col d-flex">
                <img src="assets/razor.jpeg" class="img-fluid pfpFriend">
                <h6 class="ms-3">Razor</h6>
              </div>
            </div>

            <div class="row m-3">
              <div class="col d-flex">
                <img src="assets/razor.jpeg" class="img-fluid pfpFriend">
                <h6 class="ms-3">Razor</h6>
              </div>
              <div class="col d-flex">
                <img src="assets/razor.jpeg" class="img-fluid pfpFriend">
                <h6 class="ms-3">Razor</h6>
              </div>
            </div>

          </div>
        </div>

      </section>


    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
</html>
