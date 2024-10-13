(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1851 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1851 null-String)))
(declare-const var1839 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1839 null-String)))
(define-const var3795 String "4.13.1") ; Statement: r0 = "4.13.1" 
(define-const var1821 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
 ; Statement: if r1 == null goto $r11 = "4.13.1" 
(assert (= var1851 null-String)) ; Cond: r1 == null 
(define-const var3786 String "4.13.1") ; Statement: $r11 = "4.13.1" 
(assert true)
(define-const var2134 Bool (= var3786 var1839)) ; Statement: $z5 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z5 != 0 goto $z6 = 0 
(assert (not (= (ite var2134 1 0) 0))) ; Cond: $z5 != 0 
(define-const var1459 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
(define-const var116 Bool var1459) ; Statement: z7 = $z6 
 ; Statement: if z3 == 0 goto (branch) 
(assert (= (ite var1821 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: if z7 == 0 goto return 
(assert (= (ite var116 1 0) 0)) ; Cond: z7 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1851=r1, var1378=null_type, var1839=r2, var3795=r0, var1821=z3, var3786=$r11, var2134=$z5, var1459=$z6, var116=z7}
; {r1=var1851, null_type=var1378, r2=var1839, r0=var3795, z3=var1821, $r11=var3786, $z5=var2134, $z6=var1459, z7=var116}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0 = "4.13.1";	z3 = 0;	if r1 == null goto $r11 = "4.13.1";	$r11 = "4.13.1";	$z5 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z5 != 0 goto $z6 = 0;	$z6 = 0;	z7 = $z6;	if z3 == 0 goto (branch);	if z7 == 0 goto return;	return
;block_num 6