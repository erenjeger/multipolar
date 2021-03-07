package com.multipolar.multipolarproject.entity;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HISTORY_PESANAN")
public class HistoryPesananView {

	
	@Column(name = "CUSTOMER_ID")
	private int customerId;
	
	@Column(name = "SHIP_ADDRESS")
	private String shipAddress;
	
	@Column(name = "SHIP_ZIP_CODE")
	private String shipZipCode;
	
	@Column(name = "SHIP_PHONE_NUMBER")
	private String shipPhoneNumber;
	
	@Column(name = "BILLING_ADDRESS")
	private String billingAddress;
	
	@Column(name = "CITY")
	private String city;
	
	@Column(name = "TITLE")
	private String title;
	
	@Column(name = "ORDER_DATE")
	private Date orderDate;
	
	@Column(name = "SHIP_DATE")
	private Date shipDate;
	
	@Column(name = "CUSTOMER_NAME")
	private String cutomerName;
	@Id
	@Column(name = "ORDER_ID")
	private int orderId;
	
	@Column(name = "EMPLOYEE_ID")
	private int employeeId;
	
	@Column(name = "EMPLOYEE_NAME")
	private String employeeName;
	
	@Column(name = "SHIPPING_METHOD")
	private String shippingMethod;
	
	@Column(name = "PRODUCT_ID")
	private int productId;
	
	@Column(name = "QUANTITY")
	private int qty;
	
	@Column(name = "UNIT_PRICE")
	private BigDecimal unitPrice;
	
	@Column(name = "DISCOUNT")
	private BigDecimal discount;
	
	@Column(name = "TAXES")
	private BigDecimal taxes;
	
	@Column(name = "FREIGHT_CHARGE")
	private BigDecimal freightCharge;
	
	@Column(name = "PRODUCT_NAME")
	private String productName;
	
	@Column(name = "SUB_TOTAL")
	private BigDecimal subTotal;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getShipZipCode() {
		return shipZipCode;
	}

	public void setShipZipCode(String shipZipCode) {
		this.shipZipCode = shipZipCode;
	}


	public String getShipPhoneNumber() {
		return shipPhoneNumber;
	}

	public void setShipPhoneNumber(String shipPhoneNumber) {
		this.shipPhoneNumber = shipPhoneNumber;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getShipDate() {
		return shipDate;
	}

	public void setShipDate(Date shipDate) {
		this.shipDate = shipDate;
	}

	public String getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCutomerName() {
		return cutomerName;
	}

	public void setCutomerName(String cutomerName) {
		this.cutomerName = cutomerName;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getShippingMethod() {
		return shippingMethod;
	}

	public void setShippingMethod(String shippingMethod) {
		this.shippingMethod = shippingMethod;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}

	public BigDecimal getDiscount() {
		return discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	public BigDecimal getTaxes() {
		return taxes;
	}

	public void setTaxes(BigDecimal taxes) {
		this.taxes = taxes;
	}

	public BigDecimal getFreightCharge() {
		return freightCharge;
	}

	public void setFreightCharge(BigDecimal freightCharge) {
		this.freightCharge = freightCharge;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public BigDecimal getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(BigDecimal subTotal) {
		this.subTotal = subTotal;
	}
	
	
	
	
	
}
