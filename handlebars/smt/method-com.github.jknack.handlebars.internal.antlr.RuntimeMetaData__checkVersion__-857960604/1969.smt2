(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2333 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2333 null-String)))
(declare-const var2213 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2213 null-String)))
(define-const var1537 String "4.13.1") ; Statement: r0 = "4.13.1" 
(define-const var1797 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
 ; Statement: if r1 == null goto $r11 = "4.13.1" 
(assert (= var2333 null-String)) ; Cond: r1 == null 
(define-const var2890 String "4.13.1") ; Statement: $r11 = "4.13.1" 
(assert true)
(define-const var1897 Bool (= var2890 var2213)) ; Statement: $z5 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z5 != 0 goto $z6 = 0 
(assert (not (= (ite var1897 1 0) 0))) ; Cond: $z5 != 0 
(define-const var89 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var136 Bool var89) ; Statement: z7 = $z6 
 ; Statement: if z3 == 0 goto (branch) 
(assert (= (ite var1797 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: if z7 == 0 goto return 
(assert (= (ite var136 1 0) 0)) ; Cond: z7 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2333=r1, var3460=null_type, var2213=r2, var1537=r0, var1797=z3, var2890=$r11, var1897=$z5, var89=$z6, var136=z7}
; {r1=var2333, null_type=var3460, r2=var2213, r0=var1537, z3=var1797, $r11=var2890, $z5=var1897, $z6=var89, z7=var136}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0 = "4.13.1";	z3 = 0;	if r1 == null goto $r11 = "4.13.1";	$r11 = "4.13.1";	$z5 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z5 != 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	if z3 == 0 goto (branch);	if z7 == 0 goto return;	return
;block_num 6