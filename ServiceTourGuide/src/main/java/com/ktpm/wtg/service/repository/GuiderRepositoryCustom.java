package com.ktpm.wtg.service.repository;

import java.util.List;

import com.ktpm.wtg.service.entities.Guider;

public interface GuiderRepositoryCustom {
	public List<Guider> searchText(String textSearch);
}
