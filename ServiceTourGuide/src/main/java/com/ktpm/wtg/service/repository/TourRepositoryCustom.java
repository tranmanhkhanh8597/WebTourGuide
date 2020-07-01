package com.ktpm.wtg.service.repository;

import java.util.List;

import com.ktpm.wtg.service.entities.Tour;

public interface TourRepositoryCustom {
	public List<Tour> searchText(String textSearch);
}
