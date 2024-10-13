(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1195 0)
(declare-sort var3691 0)
(declare-sort var1662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1662-init () var1662)
(declare-fun <init>/1590914260 (var1662 String) void)
(declare-const null-var1195 var1195)
(declare-const null-String String)
(declare-const var3415 var1195) ; Statement: r2 := @this: org.hibernate.cfg.EJB3NamingStrategy 
(assert (not (= var3415 null-var1195)))
(declare-const var3437 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3437 null-String)))
(declare-const var948 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var948 null-String)))
(declare-const var1765 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1765 null-String)))
(declare-const var3570 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var3570 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (= var3437 null-String)) ; Cond: r0 == null 
(define-const var606 String var1765) ; Statement: $r12 = r1 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var606 null-String)))) ; Negate: Cond: $r12 != null  
(define-const var1025 var1662 var1662-init) ; Statement: $r10 = new org.hibernate.AssertionFailure 
(assert true)
;(assert (<init>/1590914260 var1025 "NamingStrategy not properly filled")) ; Statement: specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("NamingStrategy not properly filled") 

(declare-const var1025!1 var1662)
(declare-const var3489 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1662-init=([], org.hibernate.AssertionFailure), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1195=org.hibernate.cfg.EJB3NamingStrategy, var3415=r2, var3437=r0, var3691=null_type, var948=r11, var1765=r1, var3570=r5, var606=$r12, var1662=org.hibernate.AssertionFailure, var1025=$r10, var3489="NamingStrategy not properly filled"}
; {org.hibernate.cfg.EJB3NamingStrategy=var1195, r2=var3415, r0=var3437, null_type=var3691, r11=var948, r1=var1765, r5=var3570, $r12=var606, org.hibernate.AssertionFailure=var1662, $r10=var1025, "NamingStrategy not properly filled"=var3489}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.cfg.EJB3NamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = r1;	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r10 = new org.hibernate.AssertionFailure;	specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("NamingStrategy not properly filled");	throw $r10
;block_num 4