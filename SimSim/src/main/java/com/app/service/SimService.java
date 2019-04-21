package com.app.service;

import java.util.List;

import com.app.model.entitymodel.Sim;

public interface SimService {

	public void add(Sim n);

	public void update(Sim n);

	public void delete(int id);

	public Sim getById(int id);

	public List<Sim> getAll();

	public List<Sim> findByNetword(int networdId, int page, int size);

	public List<Sim> findByScore(int score, int page, int size);

	public List<Sim> findByTotalNumbers(int totalNumbers, int page, int size);

	public List<Sim> findByPhoneStart(String number, int page, int size);

	public List<Sim> findByPhoneEnd(String number, int page, int size);

	public List<Sim> findByPhoneInside(String number, int page, int size);

	public List<Sim> findSim(Integer networdId, double priceFrom, double priceTo, Integer score,
			Integer totalNumbers, String number, List<Integer> notContainNumbers, int page, int size, Integer enabled, Integer sold);
	
	public int countAll(Integer networdId, double priceFrom, double priceTo, Integer score,
			Integer totalNumbers, String number, List<Integer> notContainNumbers);

}
