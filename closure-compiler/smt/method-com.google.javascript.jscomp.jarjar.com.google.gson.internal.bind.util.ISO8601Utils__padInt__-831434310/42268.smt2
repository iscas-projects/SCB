(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toString/1350422511 (Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2546 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2546 null-String)))
(declare-const var824 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var824 null-Int)))
(declare-const var831 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var831 null-Int)))
(define-const var1024 String (Int_toString/1350422511 var824)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var110 Int (length/-134980193 var1024)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var922 Int (- var831 var110)) ; Statement: i3 = i1 - $i2 
(assert true) ; Non Conditional
 ; Statement: if i3 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (<= var922 0)) ; Cond: i3 <= 0 
(assert true)
;(assert (append/672562846 var2546 var1024)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2546!1 String)
(assert (= var2546!1 (str.++ var2546 var1024)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toString/1350422511=([int], java.lang.String), length/-134980193=([java.lang.String], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2546=r1, var824=i0, var831=i1, var1024=r0, var110=$i2, var922=i3}
; {r1=var2546, i0=var824, i1=var831, r0=var1024, $i2=var110, i3=var922}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i1 := @parameter2: int;	r0 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = i1 - $i2;	if i3 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	return
;block_num 3