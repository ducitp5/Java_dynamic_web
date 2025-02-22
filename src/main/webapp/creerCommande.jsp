<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <title>Création d'une commande</title>
    <link rel="stylesheet" type="text/css" href="inc/style.css" />
</head>
<body>
	<c:import url="/inc/menu.jsp" />
    <div>
		<form method="get" action="<c:url value='/creationCommande' />">
            <fieldset>
                <legend>Informations client</legend>
                
                <label for="nomClient">Nom <span class="requis">*</span></label>
                <input type="text" id="nomClient" name="nomClient" size="20" maxlength="20" required />
                <br />
                
                <label for="prenomClient">Prénom</label>
                <input type="text" id="prenomClient" name="prenomClient" size="20" maxlength="20" />
                <br />
                
                <label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
                <input type="text" id="adresseClient" name="adresseClient" size="20" maxlength="20" required />
                <br />
                
                <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                <input type="text" id="telephoneClient" name="telephoneClient" size="20" maxlength="20" required />
                <br />
                
                <label for="emailClient">Adresse email</label>
                <input type="email" id="emailClient" name="emailClient" size="20" maxlength="60" />
                <br />
            </fieldset>
            
            <fieldset>
                <legend>Informations commande</legend>
                
                <label for="dateCommande">Date <span class="requis">*</span></label>
                <input type="text" id="dateCommande" name="dateCommande" size="20" maxlength="20" disabled />
                <br />
                
                <label for="montantCommande">Montant <span class="requis">*</span></label>
                <input type="text" id="montantCommande" name="montantCommande" size="20" maxlength="20" required />
                <br />
                
                <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                <input type="text" id="modePaiementCommande" name="modePaiementCommande" size="20" maxlength="20" required />
                <br />
                
                <label for="statutPaiementCommande">Statut du paiement</label>
                <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" size="20" maxlength="20" />
                <br />
                
                <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" size="20" maxlength="20" required />
                <br />
                
                <label for="statutLivraisonCommande">Statut de la livraison</label>
                <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" size="20" maxlength="20" />
                <br />
            </fieldset>
            
            <input type="submit" value="Valider" />
            <input type="reset" value="Remettre à zéro" />
        </form>
    </div>
</body>
</html>