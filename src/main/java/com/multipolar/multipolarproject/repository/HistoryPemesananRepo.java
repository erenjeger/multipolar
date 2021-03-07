package com.multipolar.multipolarproject.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.multipolar.multipolarproject.entity.HistoryPesananView;

public interface HistoryPemesananRepo extends CrudRepository<HistoryPesananView, Integer>{
	List<HistoryPesananView> findByCustomerId (int customerId);
}
