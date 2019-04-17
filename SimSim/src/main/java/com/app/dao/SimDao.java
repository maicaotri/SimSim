package com.app.dao;

import java.util.List;

import com.app.model.entitymodel.Sim;

public interface SimDao {

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

	public List<Sim> findByPhoneStartAndEnd(String startNumber, String endNumber, int page, int size);

	public List<Sim> findByPhoneStartAndEndNum1XNum2(String startNumber, String endNumber1, String endNumber2, int page,
			int size);

	public List<Sim> findByNotContain(List<Integer> listChar, int page, int size);

	public List<Sim> findByPrice(double priceFrom, double priceTo, int page, int size);

	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneStart(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String startNumber, int page, int size);
	
	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneEnd(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String endNumber, int page, int size);
	
	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneInside(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String number, int page, int size);
	
	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneInsideNotcontainnumbers(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String number, List<Integer> notContainNumbers, int page, int size);
	
	//set sim da ban
	public boolean updateSoldSim(List<Integer> list);
	
	public List<Sim> findByNetwordAndScore(int networdId, int score, int page, int size);
	
	public List<Sim> findByAllInputsAndReturn(Integer networdId, double priceFrom, double priceTo, Integer score,
			Integer totalNumbers, String number, List<Integer> notContainNumbers, int page, int size, Integer enabled, Integer sold);
	
	public void setSimSold(List<Integer> listSimId);
	
	public int countAll(Integer networdId, double priceFrom, double priceTo, Integer score,
			Integer totalNumbers, String number, List<Integer> notContainNumbers);
}
