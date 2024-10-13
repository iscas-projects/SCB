(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2481 0)
(declare-sort var1687 0)
(declare-sort var375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1687_checkNotNull/1446102589 (var375) var375)
(declare-fun cast-from-String-to-var375 (String) var375)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3830 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3830 null-String)))
(declare-const var795 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var795 null-Int)))
(declare-const var1000 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var1000 null-Int)))
;(assert (var1687_checkNotNull/1446102589 (cast-from-String-to-var375 var3830))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3830!1 String)
(assert true)
(define-const var1027 Int (length/-134980193 var3830!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 < i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var1027 var795))) ; Negate: Cond: $i1 < i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1687_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var375=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var3830=r0, var2481=null_type, var795=i0, var1000=c2, var1687=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var375=java.lang.Object, var1027=$i1}
; {r0=var3830, null_type=var2481, i0=var795, c2=var1000, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1687, java.lang.Object=var375, $i1=var1027}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c2 := @parameter2: char;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 < i0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2