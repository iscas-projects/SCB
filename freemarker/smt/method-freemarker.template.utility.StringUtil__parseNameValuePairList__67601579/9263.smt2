(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2495 0)
(declare-sort var2941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2941-init () var2941)
(declare-fun <init>/-201242697 (var2941) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1774 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1774 null-String)))
(declare-const var3044 String) ; Statement: r35 := @parameter1: java.lang.String 
(assert (not (= var3044 null-String)))
(define-const var2623 var2941 var2941-init) ; Statement: $r0 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2623)) ; Statement: specialinvoke $r0.<java.util.HashMap: void <init>()>() 

(declare-const var2623!1 var2941)
(define-const var1442 Int 32) ; Statement: c3 = 32 
(assert true)
(define-const var1417 Int (length/-134980193 var1774)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1125 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1125 var1417)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto i1 = i4 
(assert (not (not (= var1125 var1417)))) ; Negate: Cond: i4 != i0  
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2941-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), length/-134980193=([java.lang.String], int)}
; {var1774=r1, var2495=null_type, var3044=r35, var2941=java.util.HashMap, var2623=$r0, var1442=c3, var1417=i0, var1125=i4}
; {r1=var1774, null_type=var2495, r35=var3044, java.util.HashMap=var2941, $r0=var2623, c3=var1442, i0=var1417, i4=var1125}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r35 := @parameter1: java.lang.String;	$r0 = new java.util.HashMap;	specialinvoke $r0.<java.util.HashMap: void <init>()>();	c3 = 32;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto (branch);	if i4 != i0 goto i1 = i4;	goto [?= return $r0];	return $r0
;block_num 5