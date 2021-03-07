package com.multipolar.multipolarproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.multipolar.multipolarproject.entity.HistoryPesananView;
import com.multipolar.multipolarproject.repository.HistoryPemesananRepo;


@Controller
public class RestController {
	
	@Autowired
	HistoryPemesananRepo historyPemesananRepo;
	
	
	@GetMapping("history/pemesanan/{customer_id}")
	public String historyPemesanan (@PathVariable("customer_id") int customerId,Model model) {
		List<HistoryPesananView> lsPemesanan = historyPemesananRepo.findByCustomerId(customerId);
		
		if(lsPemesanan != null ) {
			model.addAttribute("pemesanan", lsPemesanan);
		
		}
		return "history_pemesanan";
	}

}
