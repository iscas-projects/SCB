(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1845 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1845 null-String)))
(declare-const var947 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var947 null-__Array__Int__String__)))
(declare-const var2526 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var2526 null-String)))
(define-const var1504 String (select var947 0)) ; Statement: $r2 = r1[0] 
(assert true)
;(assert (append/672562846 var2526 var1504)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2526!1 String)
(assert (= var2526!1 (str.++ var2526 var1504)))
(define-const var3682 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
(define-const var1878 Int (getLength-Arr-String-1 var947)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto return 
(assert (>= var3682 var1878)) ; Cond: i1 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1845=r3, var2085=null_type, var947=r1, var2526=r0, var1504=$r2, var3682=i1, var1878=$i0}
; {r3=var1845, null_type=var2085, r1=var947, r0=var2526, $r2=var1504, i1=var3682, $i0=var1878}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String[];	r0 := @parameter2: java.lang.StringBuilder;	$r2 = r1[0];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	i1 = 1;	$i0 = lengthof r1;	if i1 >= $i0 goto return;	return
;block_num 3