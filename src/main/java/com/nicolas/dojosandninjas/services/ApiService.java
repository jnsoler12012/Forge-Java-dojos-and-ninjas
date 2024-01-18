package com.nicolas.dojosandninjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nicolas.dojosandninjas.models.Dojo;
import com.nicolas.dojosandninjas.models.Ninja;
import com.nicolas.dojosandninjas.repositories.DojoRepository;
import com.nicolas.dojosandninjas.repositories.NinjaRepository;

@Service
public class ApiService {
    @Autowired
    private NinjaRepository ninjaRepo;
    @Autowired
	private DojoRepository dojoRepo;

    public List<Ninja> findAllNinjas() {
		return ninjaRepo.findAll();
	}

    public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

    public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	public List<Dojo> findAllDojos() {
		return dojoRepo.findAll();
	}
}
