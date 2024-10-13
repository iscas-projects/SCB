(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3569 0)
(declare-sort var2794 0)
(declare-sort var3457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3457-init () var3457)
(declare-fun <init>/1590914260 (var3457 String) void)
(declare-const null-var3569 var3569)
(declare-const null-String String)
(declare-const var3784 var3569) ; Statement: r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy 
(assert (not (= var3784 null-var3569)))
(declare-const var1606 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1606 null-String)))
(declare-const var3365 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var3365 null-String)))
(declare-const var526 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var526 null-String)))
(declare-const var936 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var936 null-String)))
 ; Statement: if r0 == null goto $r12 = r1 
(assert (= var1606 null-String)) ; Cond: r0 == null 
(define-const var1095 String var526) ; Statement: $r12 = r1 
(assert true) ; Non Conditional
 ; Statement: if $r12 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var1095 null-String)))) ; Negate: Cond: $r12 != null  
(define-const var647 var3457 var3457-init) ; Statement: $r10 = new org.hibernate.AssertionFailure 
(assert true)
;(assert (<init>/1590914260 var647 "NamingStrategy not properly filled")) ; Statement: specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("NamingStrategy not properly filled") 

(declare-const var647!1 var3457)
(declare-const var1614 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3457-init=([], org.hibernate.AssertionFailure), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var3569=org.hibernate.cfg.DefaultComponentSafeNamingStrategy, var3784=r2, var1606=r0, var2794=null_type, var3365=r11, var526=r1, var936=r5, var1095=$r12, var3457=org.hibernate.AssertionFailure, var647=$r10, var1614="NamingStrategy not properly filled"}
; {org.hibernate.cfg.DefaultComponentSafeNamingStrategy=var3569, r2=var3784, r0=var1606, null_type=var2794, r11=var3365, r1=var526, r5=var936, $r12=var1095, org.hibernate.AssertionFailure=var3457, $r10=var647, "NamingStrategy not properly filled"=var1614}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.cfg.DefaultComponentSafeNamingStrategy;	r0 := @parameter0: java.lang.String;	r11 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	if r0 == null goto $r12 = r1;	$r12 = r1;	if $r12 != null goto $r3 = new java.lang.StringBuilder;	$r10 = new org.hibernate.AssertionFailure;	specialinvoke $r10.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>("NamingStrategy not properly filled");	throw $r10
;block_num 4