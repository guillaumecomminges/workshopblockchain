<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Smart insurance</title>
    </head>
    <body>
        <form action="ServletChain" method="post">
                Nom : <input type="text" name="nom"/><br>
                Prénom : <input type="text" name="prenom"/><br>
                Ville : <input type="text" name="ville"/><br>
                <input type="hidden" name="action" value="souscription"/>
                <input type="submit" value="Souscrire à un smart contrat" name="submit"/>
        </form>
	</body>
</html>
