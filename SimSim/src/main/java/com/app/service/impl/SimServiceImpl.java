package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.SimDao;
import com.app.model.entitymodel.Sim;
import com.app.service.SimService;

@Service
@Transactional
public class SimServiceImpl implements SimService {
	@Autowired
	SimDao simDao;

	public void add(Sim n) {
		simDao.add(n);
	}

	public void update(Sim n) {
		simDao.update(n);
	}

	public void delete(int id) {
		simDao.delete(id);
	}

	public Sim getById(int id) {
		return simDao.getById(id);
	}

	public List<Sim> getAll() {
		return simDao.getAll();
	}

	public List<Sim> findByNetword(int networdId, int page, int size) {
		return simDao.findByNetword(networdId, page, size);
	}

	public List<Sim> findByScore(int score, int page, int size) {
		return simDao.findByScore(score, page, size);
	}

	public List<Sim> findByTotalNumbers(int totalNumbers, int page, int size) {
		return simDao.findByTotalNumbers(totalNumbers, page, size);
	}

	public List<Sim> findByPhoneStart(String number, int page, int size) {
		return simDao.findByPhoneStart(number, page, size);
	}

	public List<Sim> findByPhoneEnd(String number, int page, int size) {
		return simDao.findByPhoneEnd(number, page, size);
	}

	public List<Sim> findByPhoneInside(String number, int page, int size) {
		return simDao.findByPhoneInside(number, page, size);
	}

	public List<Sim> findByPhoneStartAndEnd(String startNumber, String endNumber, int page, int size) {
		return simDao.findByPhoneStartAndEnd(startNumber, endNumber, page, size);
	}

	public List<Sim> findByPhoneStartAndEndNum1XNum2(String startNumber, String endNumber1, String endNumber2, int page,
			int size) {
		return simDao.findByPhoneStartAndEndNum1XNum2(startNumber, endNumber1, endNumber2, page, size);
	}

	public List<Sim> findByNotContain(List<Integer> listChar, int page, int size) {
		return simDao.findByNotContain(listChar, page, size);
	}

	public List<Sim> findByPrice(double priceFrom, double priceTo, int page, int size) {
		return simDao.findByPrice(priceFrom, priceTo, page, size);
	}

	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneStart(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String startNumber, int page, int size) {
		return simDao.findByNetwordPriceScoreTotalnumberPhoneStart(networdId, priceFrom, priceTo, score, totalNumbers,
				startNumber, page, size);
	}

	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneEnd(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String endNumber, int page, int size) {
		return simDao.findByNetwordPriceScoreTotalnumberPhoneEnd(networdId, priceFrom, priceTo, score, totalNumbers,
				endNumber, page, size);
	}

	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneInside(int networdId, double priceFrom, double priceTo,
			int score, int totalNumbers, String number, int page, int size) {
		return simDao.findByNetwordPriceScoreTotalnumberPhoneEnd(networdId, priceFrom, priceTo, score, totalNumbers,
				number, page, size);
	}

	public List<Sim> findByNetwordPriceScoreTotalnumberPhoneInsideNotcontainnumbers(int networdId, double priceFrom,
			double priceTo, int score, int totalNumbers, String number, List<Integer> notContainNumbers, int page,
			int size) {
		return simDao.findByNetwordPriceScoreTotalnumberPhoneInsideNotcontainnumbers(networdId, priceFrom, priceTo,
				score, totalNumbers, number, notContainNumbers, page, size);
	}

	public List<Sim> findByNetwordAndScore(int networdId, int score, int page, int size) {
		return simDao.findByNetwordAndScore(networdId, score, page, size);
	}

	public List<Sim> findByAllInputsAndReturn(Integer networdId, double priceFrom, double priceTo, Integer score,
			Integer totalNumbers, String number, List<Integer> notContainNumbers, int page, int size, Integer enabled, Integer sold) {
		return simDao.findByAllInputsAndReturn(networdId, priceFrom, priceTo, score, totalNumbers, number, notContainNumbers, page, size, enabled, sold);
	}

	public int countAll(Integer networdId, double priceFrom, double priceTo, Integer score, Integer totalNumbers,
			String number, List<Integer> notContainNumbers) {
		return simDao.countAll(networdId, priceFrom, priceTo, score, totalNumbers, number, notContainNumbers);
	}

}
