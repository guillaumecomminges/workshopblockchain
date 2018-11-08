<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Smart insurance</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        
    <header>
      <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">Le sujet</h4>
              <p class="text-muted">écrire un truc de ouf guedin</p>
            </div>
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">Notre groupe</h4>
              <ul class="list-unstyled">
                <li><a href="#" class="text-white">Kevin Aubry</a></li>
                <li><a href="#" class="text-white">Thibaut Pintrand</a></li>
                <li><a href="#" class="text-white">Guillaume Comminges</a></li>
                <li><a href="#" class="text-white">Fabrice El Ouardi</a></li>
                <li><a href="#" class="text-white">Romain Heinrich</a></li>

              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
          <a href="#" class="navbar-brand d-flex align-items-center">
            <strong>AXA - assurez vos champs !</strong>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </div>
    </header>

    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading">Assurez vos champs !</h1>
          <p class="lead text-muted">Une solution originale et innovante, AXA vous propose une nouvelle manière de vous assurer !</p>
          
          <form method="POST" action="ServletChain">
  <div class="form-group">
    <label for="exampleInputEmail1">Nom</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Entrez votre nom">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Prénom</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Entrez votre prénom">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Ville</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Entrez votre ville">
  </div>
    <small id="emailHelp" class="form-text text-muted">Ces informations resteront confidentielles (oupa je sépa)</small>
	<input type="hidden" name="action" value="souscription"/>
  <button type="submit" class="btn btn-primary">Souscrire à un smart contrat</button>
</form>
          
          
        </div>
      </section>

     

    </main>

    <footer class="text-muted">
      <div class="container">
       
        <p>Projet réalisé dans la cadre d'un workshop pour l'EPSI Montpellier - Novembre 2018</p>
      </div>
    </footer>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
