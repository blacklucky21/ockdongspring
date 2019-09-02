package com.junwo.ockdong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("adminView.do")
	public String adminView() {
		
		
		
		return "admin/adminMain";	
	}
	
	@RequestMapping("adminPaymentList.do")
	public String adminPaymentList() {
		
		return"admin/Payment/adminPayment";
	}
	
	@RequestMapping("PaymentTotal.do")
	public String paymentTotal() {
		
		return"admin/payment/PaymentTotalList";
	}

}
