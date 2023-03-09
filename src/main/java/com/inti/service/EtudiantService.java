package com.inti.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.inti.model.Etudiant;

@Service
public interface EtudiantService {

	public List<Etudiant> getEtudiants();
	
	public void saveEtudiant(Etudiant e1);
	
	public Etudiant getEtudiant(int id);
	
	public void deleteEtudiant(int id);
}
