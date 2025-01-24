drop user prj2432b cascade;
create user prj2432b identified by prj2432b;
grant connect,resource to prj2432b;
conn prj2432b/prj2432b;
create table employee_details
(
	emp_id varchar2(6),
	emp_nm varchar2(40) not null,
	emp_gender varchar2(1) not null,
	emp_phno varchar2(10) not null,
	emp_aadhar varchar2(12) not null,
	constraint empid_pk primary key(emp_id),
	constraint gen_chk check(emp_gender in('M','F','O')),
	constraint adhar_uniqe unique(emp_aadhar)
);
create table company_details 
(
	comp_id varchar2(6),
	comp_nm varchar2(40) not null,
	constraint comp_id_pk primary key(comp_id)
);
create table product_details
(
	p_id varchar2(6) constraint pid_pk primary key,
	p_type varchar2(10) constraint protype_chk check(p_type in('smartphone','barphone')),
	model_nm varchar2(12) null,
	p_color varchar2(20)null,
	ram varchar2(3)null,
	rom varchar2(3)null,
	comp_id varchar2(6) constraint compid_fk references company_details(comp_id),
	disp_size varchar2(10)null,
	disp_type varchar2(20)null,
	processor varchar2(30)null,
	os varchar2(20)null,
	rear_cam varchar2(20)null,
	front_cam varchar2(10)null,
	battery varchar2(10)null,
	mfd date null,
	mrp decimal(9,2)not null,
	network_type varchar2(10),
	bluetooth_support char(3) not null constraint blth_chk check(bluetooth_support in('yes','no')),
	usb_type varchar2(10)not null,
	graphics varchar2(20)	
);

create table stock_details
(
	stk_id varchar2(6) constraint stk_id_pk primary key,
	p_id varchar2(6) constraint pid_fk references product_details(p_id),
	avl_qty number(5)not null,
	min_lev number(5)null,
	max_lev number(5)not null
);
create table supplier_details
(
	sup_id varchar2(6) constraint supid_pk primary key,
	sup_nm varchar2(30)not null,
	sup_phn varchar2(12)not null,
	gst_no varchar2(30) not null,
	comp_nm varchar2(50)not null,
	owner_nm varchar2(30)not null,
	comp_phn varchar2(10)not null
);
create table supplier_product_details
(
	sr_no number(5) constraint sr_no_pk primary key,
	sup_id varchar2(6) constraint supid_fk references supplier_details(sup_id),
	p_id varchar2(6) constraint pid_sup_prod_fk references product_details(p_id),
	qty number(6)not null,
	rate decimal(8,2)not null
);
create table purchase_order_details
(
	pur_id varchar2(6) constraint purid_pk primary key,
	pur_date date not null,
	exp_del_date date null,
	sup_id varchar2(6) constraint supid_purord_fk references supplier_details(sup_id),
	adv_amt decimal(8,2)null,
	tot_amt decimal(8,2)not null,
	dues decimal(8,2) null,
	tax decimal(8,2)null,
	grand_tot decimal(9,2)not null
);
	
create table purchase_invoice_details
(
	inv_no varchar2(10)constraint invno_pk primary key,
	inv_date date not null,
	address varchar2(50)null,
	gst_no varchar2(15)not null,
	comp_phn varchar2(10)not null,
	tot_amt decimal(8,2)not null,
	tax decimal(8,2)null,
	net_amt decimal(8,2) not null,
	pur_id varchar2(6) constraint purid_inv_fk references purchase_order_details(pur_id)
);
create table pur_inv_prod_details
(
	inv_no varchar2(6) constraint invno_fk references purchase_invoice_details(inv_no),
	p_id varchar2(6) constraint pid_purinvprod_fk references product_details(p_id),
	p_nm varchar2(20)not null,
	qty number(5)not null,
	mrp decimal(8,2)null,
	rate number(5)not null,
	discount decimal(8,2)null,
	amt decimal(8,2)not null,
	dis_per decimal(8,2)null,
	dis_val decimal(8,2)null,
	tot_amt decimal(8,2)not null
);
create table supplier_payment_details
(
	pay_id varchar2(6),
	sup_id varchar2(6) constraint supid_pay_fk references supplier_details(sup_id),
	pay_date date not null,
	paid_amt decimal(8,2)not null,
	balance decimal(8,2)null,
	inv_no varchar2(6) constraint invno_suppay_fk references purchase_invoice_details(inv_no)
);
create table pur_return_inv_details
(
	p_rtrn_inv_id varchar2(13) primary key,
	inv_no varchar2(10) constraint invno_pur_ret_fk references purchase_invoice_details(inv_no),
	ret_date date not null,
	addr varchar2(50)null,
	gst_no varchar2(15)not null,
	comp_phn varchar2(10)not null,
	tot_amt decimal(8,2)not null,
	tax decimal(8,2)null,
	net_amt decimal(8,2)not null,
	pur_id varchar2(6) constraint purid_ret_fk references purchase_order_details(pur_id)
);
create table pur_return_inv_prod_details
(
	p_ret_inv_id varchar2(6) constraint pretinvid_fk references pur_return_inv_details(p_rtrn_inv_id),
	p_id varchar2(6) constraint pid_purretinvprod_fk references product_details(p_id),
	p_nm varchar2(20)not null,
	qty number(5)not null,
	mrp decimal(8,2)null,
	rate number(5)not null,
	amt decimal(8,2)not null,
	dis_per decimal(8,2)null,
	dis_val decimal(8,2)null,
	tot_amt decimal(8,2)not null	
);
create table customer_details
(
	cust_id varchar2(7) constraint custid_pk primary key,
	cust_nm varchar2(40)not null,
	cust_gen char(6) constraint custgen_chk check(cust_gen in('M','F','O')),
	cust_phn varchar2(10)null,
	cust_add varchar2(30)null
);
create table sell_order_details
(
	sel_id varchar2(6) constraint selid_pk primary key,
	sel_date date not null,
	cust_id varchar2(7) constraint custid_sel_fk references customer_details(cust_id),
	tot_amt decimal(8,2)not null,
	grand_tot decimal(8,2)not null
);	
create table sell_order_product_details
(
	sel_ord_id varchar2(10) constraint selordid_pk primary key,
	sel_id varchar2(6) constraint selid_fk references sell_order_details(sel_id),
	p_id varchar2(6) constraint pid_sel_fk references product_details(p_id),
	qty number(5)not null,
	amt decimal(8,2)not null,
	gst_per decimal(3,2)null
);
create table sell_invoice_details 
(
	sel_inv_no varchar2(10) constraint selinvno_pk primary key,
	selinv_date date null,
	addr varchar2(30)null,
	gst_no varchar2(15)not null,
	cust_id varchar2(7) constraint custid_selinv_fk references customer_details(cust_id),
	comp_phn varchar2(10)not null,
	tot_amt decimal(8,2)not null,
	discount decimal(8,2)null,
	tax decimal(8,2)null,
	net_amt decimal(8,2)not null,
	sel_id varchar2(6) constraint selid_inv_fk references sell_order_details(sel_id)
);
create table sell_invoice_product_details
(
	sel_inv_no varchar2(10) constraint sel_inv_no_fk references sell_invoice_details(sel_inv_no),
	p_id varchar2(6) constraint pid__selinvprod_fk references product_details(p_id),
	p_nm varchar2(30)not null,
	qty number(5)not null,
	mfg_date date null,
	mrp decimal(8,2)null,
	rate decimal(8,2)not null,
	amt decimal(8,2)not null,
	dis_per decimal(8,2)null,
	dis_val decimal(8,2)null,
	tot_amt decimal(8,2)not null	
);