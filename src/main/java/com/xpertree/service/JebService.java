package com.xpertree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xpertree.dao.JebDAO;
import com.xpertree.model.Jeb;

import java.util.ArrayList;
import java.util.List;

@Service
public class JebService {
    @Autowired
    JebDAO jebDAO;

    //getting all jeb record by using the method findAll() of crudRepository
    public List<Jeb> getAllJeb() {
        List<Jeb> jeb = new ArrayList<>();
        jebDAO.findAll().forEach(jeb::add);
        return jeb;
    }
}