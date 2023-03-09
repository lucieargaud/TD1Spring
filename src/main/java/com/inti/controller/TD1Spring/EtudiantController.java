package com.inti.controller.TD1Spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.inti.model.Etudiant;
import com.inti.service.EtudiantService;
import com.inti.service.EtudiantServiceImpl;

@Controller
@RequestMapping("etudiant")
public class EtudiantController {

	@Autowired
	EtudiantService es;
	
//	@RequestMapping(value = "afficherEtudiant", method = RequestMethod.GET)
//	public ModelAndView helloWorld(ModelAndView model) 
//	{
//		model = new ModelAndView("etudiant");
//		return model;
//	}
	@GetMapping("afficher")
	public String afficherEtudiant(Model m)
	{
		m.addAttribute("listeEtudiants", es.getEtudiants());
		return "afficher";
	}
	
	
	
	@GetMapping("save")
	public String enregistrerEtudiant(@RequestParam("nom") String nom, @RequestParam("prenom") 
		String prenom, @RequestParam("tel") String tel, @RequestParam("mail") String mail, Model m)
	{
		Etudiant e= new Etudiant(nom, prenom, tel, mail);
		es.saveEtudiant(e);
		m.addAttribute("e", e);
		return "enregistrer";
	}
	
	@GetMapping("getId")
	public String getEtudiant(@RequestParam("id") int id, Model m)
	{
		m.addAttribute("e1", es.getEtudiant(id));
		return "getId";
	}
	
	@GetMapping("supprimer")
	public String supprimer(@RequestParam("id") int id, Model m)
	{
		es.deleteEtudiant(id);
		m.addAttribute("e1", es.getEtudiant(id));
		return "supprimer";
	}
	
	@GetMapping("inscriptionE")
	public String inscriptionEtudiant()
	{
		return "inscriptionE";
	}
	
	@PostMapping("saveEtuAvecForm")
	public String enregistrerEtu(@ModelAttribute("etu") Etudiant e, Model m)
	{
		es.saveEtudiant(e);
		m.addAttribute("e", e);
//		return "enregistrer";
		return "redirect:/etudiant/inscriptionE";
	}
}
