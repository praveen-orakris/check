package com.xpertree.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.xpertree.model.Jeb;

@Repository
public interface JebDAO extends CrudRepository<Jeb, Integer> {
	public List<Jeb> findAll();
}
