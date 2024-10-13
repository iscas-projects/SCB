(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var1470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1470_getByShortValue/85620303 (Int) var1470)
(declare-fun setMargin/1698882642 (var248 var1470 Float64) void)
(declare-const null-var248 var248)
(declare-const null-Int Int)
(declare-const null-Float64 Float64)
(declare-const null-var1470 var1470)
(declare-const var2992 var248) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var2992 null-var248)))
(declare-const var2194 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var2194 null-Int)))
(declare-const var712 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var712 null-Float64)))
(define-const var3462 var1470 (var1470_getByShortValue/85620303 var2194)) ; Statement: r0 = staticinvoke <org.apache.poi.ss.usermodel.PageMargin: org.apache.poi.ss.usermodel.PageMargin getByShortValue(short)>(s0) 
 ; Statement: if r0 != null goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0) 
(assert (not (= var3462 null-var1470))) ; Cond: r0 != null 
(assert true)
;(assert (setMargin/1698882642 var2992 var3462 var712)) ; Statement: virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0) 

(declare-const var2992!1 var248)
(declare-const var3462!1 var1470)
(declare-const var712!1 Float64)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1470_getByShortValue/85620303=([short], org.apache.poi.ss.usermodel.PageMargin), setMargin/1698882642=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.ss.usermodel.PageMargin, double], void)}
; {var248=org.apache.poi.xssf.usermodel.XSSFSheet, var2992=r1, var2194=s0, var712=d0, var1470=org.apache.poi.ss.usermodel.PageMargin, var3462=r0}
; {org.apache.poi.xssf.usermodel.XSSFSheet=var248, r1=var2992, s0=var2194, d0=var712, org.apache.poi.ss.usermodel.PageMargin=var1470, r0=var3462}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheet;	s0 := @parameter0: short;	d0 := @parameter1: double;	r0 = staticinvoke <org.apache.poi.ss.usermodel.PageMargin: org.apache.poi.ss.usermodel.PageMargin getByShortValue(short)>(s0);	if r0 != null goto virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0);	virtualinvoke r1.<org.apache.poi.xssf.usermodel.XSSFSheet: void setMargin(org.apache.poi.ss.usermodel.PageMargin,double)>(r0, d0);	return
;block_num 2