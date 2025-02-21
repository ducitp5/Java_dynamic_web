package com.sdzee.tp.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import com.sdzee.tp.beans.Client;
import com.sdzee.tp.beans.Commande;

@SuppressWarnings("serial")
public class CreationCommande extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nom 			= request.getParameter("nomClient");
		String prenom 		= request.getParameter("prenomClient");
		String adresse 		= request.getParameter("adresseClient");
		String telephone 	= request.getParameter("telephoneClient");
		String email 		= request.getParameter("emailClient");

		DateTime dt 		= new DateTime();

		DateTimeFormatter 	formatter 	= DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");
		String 				date 		= dt.toString(formatter);
		double montant;
		
		try {
			montant = Double.parseDouble(request.getParameter("montantCommande"));
		} 
		catch (NumberFormatException e) {
			/*
			 * Initialisation à -1 si le montant n'est pas un nombre correct
			 */
			montant = -1;
		}
		
		String modePaiement 	= request.getParameter("modePaiementCommande");
		String statutPaiement 	= request.getParameter("statutPaiementCommande");

		String modeLivraison 	= request.getParameter("modeLivraisonCommande");
		String statutLivraison 	= request.getParameter("statutLivraisonCommande");
		String message;
		/*
		 * Initialisation du message à afficher : si un des champs obligatoires du
		 * formulaire n'est pas renseigné, alors on affiche un message d'erreur, sinon
		 * on affiche un message de succès
		 */
		if (nom.trim().isEmpty() || adresse.trim().isEmpty() || telephone.trim().isEmpty() || montant == -1
				|| modePaiement.isEmpty() || modeLivraison.isEmpty()) {
			message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. "
					+ "<br> <a href=\"creerCommande.jsp\">Cliquez ici</a> "
					+ "pour accéder au formulaire de création d'une commande.";
		} 
		else {
			message = "Commande créée avec succès !";
		}

		Client client = new Client();
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAdresse(adresse);
		client.setTelephone(telephone);
		client.setEmail(email);

		Commande commande = new Commande();
		commande.setClient(client);
		commande.setDate(date);
		commande.setMontant(montant);
		commande.setModePaiement(modePaiement);
		commande.setStatutPaiement(statutPaiement);
		commande.setModeLivraison(modeLivraison);
		commande.setStatutLivraison(statutLivraison);

		request.setAttribute("commande", commande);
		request.setAttribute("message", message);

		this.getServletContext().getRequestDispatcher("/afficherCommande.jsp").forward(request, response);
	}
}